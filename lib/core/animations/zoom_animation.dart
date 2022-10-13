import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/custom_outline.dart';
import 'package:mysite/core/theme/app_theme.dart';

class ZoomAnimations extends StatefulWidget {
  const ZoomAnimations({Key? key}) : super(key: key);

  @override
  State<ZoomAnimations> createState() => _ZoomAnimationsState();
}

class _ZoomAnimationsState extends State<ZoomAnimations>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    sizeAnimation = Tween(begin: 0.0, end: 0.2).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut)));
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    //
    _controller2 = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(
      CurvedAnimation(
        parent: _controller2,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return SizedBox(
      width: size.width / 4,
      height: size.width / 4,
      child: AlignTransition(
        alignment: _alignAnimation,
        child: CustomOutline(
          strokeWidth: 5,
          radius: size.width * 0.2,
          padding: const EdgeInsets.all(5),
          width: size.width * sizeAnimation.value,
          height: size.width * sizeAnimation.value,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.secondaryColor,
                theme.secondaryColor.withOpacity(0),
                theme.primaryColor.withOpacity(0.1),
                theme.primaryColor
              ],
              stops: const [
                0.2,
                0.4,
                0.6,
                1
              ]),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.8),
              image: const DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomLeft,
                image: AssetImage('assets/imgs/IMG_0107.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
