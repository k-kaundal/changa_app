import 'package:changa_app/src/ui/login/login.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class Intro extends StatelessWidget {
  static const List<ContentConfig> listContentConfig = <ContentConfig>[
    ContentConfig(
      title: "ERASER",
      description:
          "Allow miles wound place the leave had. To sitting subject no improve studied limited",
      // pathImage: 'assets/tuto-1.jpg',
      // backgroundColor: Color(0xfff5a623),
      backgroundImage: 'assets/tuto-1.jpg',
    ),
    ContentConfig(
      title: "PENCIL",
      description: "Ye indulgence unreserved connection alteration appearance",
      // pathImage: "images/photo_pencil.png",
      // backgroundColor: Color(0xff203152),
      backgroundImage: 'assets/tuto-2.jpg',
    ),
    ContentConfig(
      title: "RULER",
      description:
          "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
      // pathImage: "images/photo_ruler.png",
      backgroundImage: 'assets/tuto-3.jpg',
    ),
  ];

  final Color activeColor = const Color(0xff0BEEF9);
  final Color inactiveColor = const Color(0xff03838b);
  final double sizeIndicator = 20;

  const Intro({super.key});

  void onDonePress() {

  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
      indicatorConfig: IndicatorConfig(
        sizeIndicator: sizeIndicator,
        indicatorWidget: Container(
          width: sizeIndicator,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: inactiveColor),
        ),
        activeIndicatorWidget: Container(
          width: sizeIndicator,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: activeColor),
        ),
        spaceBetweenIndicator: 10,
        typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
      ),
    );
  }
}
