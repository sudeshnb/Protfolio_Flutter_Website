import 'package:flutter/material.dart';

class CustomOutline extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;

  final double _width;
  final double _height;
  final EdgeInsetsGeometry _padding;

  CustomOutline({
    Key? key,
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    required Widget child,
    required double width,
    required double height,
    required EdgeInsetsGeometry padding,
  })  : _painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _width = width,
        _height = height,
        _padding = padding,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: Container(
        width: _width,
        height: _height,
        // ignore: sort_child_properties_last
        child: _child,
        padding: _padding,
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double _radius;
  final double _strokeWidth;
  final Gradient _gradient;

  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : _strokeWidth = strokeWidth,
        _radius = radius,
        _gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(
      outerRect,
      Radius.circular(_radius),
    );

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(_strokeWidth, _strokeWidth,
        size.width - _strokeWidth * 2, size.height - _strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(_radius - _strokeWidth));

    // apply gradient shader
    _paint.shader = _gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
