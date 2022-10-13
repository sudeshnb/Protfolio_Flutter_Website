part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.2),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\nWhat I can do?'),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(2.w)!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: servicesUtils
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(service: e.value),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
