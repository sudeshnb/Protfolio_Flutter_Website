import 'package:flutter/material.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class ColorChageButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const ColorChageButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: DesktopCCButton(text: text, onTap: onTap),
      tablet: TabCCButton(text: text, onTap: onTap),
      mobile: MobileCCButton(text: text, onTap: onTap),
    );
  }
}

class MobileCCButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const MobileCCButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  @override

  // ignore: library_private_types_in_public_api
  _MobileCCButtonState createState() => _MobileCCButtonState();
}

class _MobileCCButtonState extends State<MobileCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 35,
            width: 125,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 1.5),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 35,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: pinkpurple,
          ),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              isHover = !isHover;
              _animatedWidth = value ? 125 : 0.0;
            });
          },
          onTap: () {
            setState(() => _animatedWidth = 125);
            widget.onTap();
          },
          child: SizedBox(
            height: 35,
            width: 125,
            child: Center(
              child: Text(
                widget.text.toUpperCase(),
                style: TextStyle(
                  color: theme.textColor,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TabCCButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const TabCCButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  @override

  // ignore: library_private_types_in_public_api
  _TabCCButtonState createState() => _TabCCButtonState();
}

class _TabCCButtonState extends State<TabCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 50,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: pinkpurple,
          ),
        ),
        InkWell(
            onHover: (value) {
              setState(() {
                isHover = !isHover;
                _animatedWidth = value ? 200 : 0.0;
              });
            },
            onTap: () {
              setState(() => _animatedWidth = 200);
              widget.onTap();
            },
            child: SizedBox(
              height: 50,
              width: 200,
              child: Center(
                child: Text(
                  widget.text.toUpperCase(),
                  style: TextStyle(
                    color: theme.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}

class DesktopCCButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const DesktopCCButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  @override

  // ignore: library_private_types_in_public_api
  _DesktopCCButtonState createState() => _DesktopCCButtonState();
}

class _DesktopCCButtonState extends State<DesktopCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 65,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 3),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 65,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: pinkpurple,
          ),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              isHover = !isHover;
              _animatedWidth = value ? 250 : 0.0;
            });
          },
          onTap: () {
            setState(() => _animatedWidth = 250);
            widget.onTap();
          },
          child: SizedBox(
            height: 65,
            width: 250,
            child: Center(
              child: Text(
                widget.text.toUpperCase(),
                style: TextStyle(
                  color: isHover ? whiteColor : theme.textColor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
