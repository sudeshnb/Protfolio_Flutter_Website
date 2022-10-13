import 'package:flutter/material.dart';
import 'package:mysite/core/res/responsive.dart';
import 'home_desktop.dart';
import 'home_mobile.dart';
import 'home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
