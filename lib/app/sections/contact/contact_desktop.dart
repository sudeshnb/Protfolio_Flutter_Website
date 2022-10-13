import 'package:flutter/material.dart';
import 'package:mysite/app/utils/contact_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: Space.all(1, 1),
      // padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(30)),
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nGet in Touch"),
          Space.y(1.w)!,
          const CustomSectionSubHeading(
            text:
                "If you want to avail my services you can contact me at the links below.",
          ),
          Space.y(2.w)!,
          Container(
            padding: EdgeInsets.all(size.width * 0.05).copyWith(bottom: 10),
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [blackColorShadow],
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contactHeadding,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Space.y(1.w)!,
                        Text(
                          contactSubHeadding,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Space.y(2.w)!,
                        // SizedBox(height: AppDimensions.space(3)),
                      ],
                    ),
                    InkWell(
                      onTap: () => openURL(whatsapp),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                            gradient: buttonGradi,
                            // border: Border.all(
                            //     width: 2.0, color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(color: Colors.white.withOpacity(0.2), height: 1),
                Space.y(2.w)!,
                Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 50,
                    children: contactUtils
                        .asMap()
                        .entries
                        .map((e) => IconButton(
                              icon: Image.network(
                                e.value.icon,
                                color: theme.textColor,
                              ),
                              onPressed: () => openURL(e.value.url),
                              highlightColor: Colors.white54,
                              iconSize: 21,
                            ))
                        .toList()),
              ],
            ),
          ),
          // Space.y!,
        ],
      ),
    );
  }
}
