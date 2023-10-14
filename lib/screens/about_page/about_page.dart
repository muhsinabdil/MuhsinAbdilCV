import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:muhsinabdilcv/constants/color_const.dart';
import 'package:muhsinabdilcv/constants/metric_const.dart';
import 'package:muhsinabdilcv/constants/text_const.dart';
import 'package:muhsinabdilcv/utilities/screen_size.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../widgets/custom_chip_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> skils = [
      "Flutter",
      "Dart",
      "Unity",
      "C#",
      "C",
      ".Net",
      "Mssql",
      "Mysql",
      "Firebase",
      "JavaScript",
      "Java",
      "Node.js",
      "Vue.js",
      "Tailwind",
      "Android Studio",
      "React",
      "Angular.js",
      "Python",
      "Cinema4D",
      "Blender",
      "3DMax",
      "Indesign",
      "Illustrator",
      "Photoshop",
    ];
    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
            width: ResponsiveBreakpoints.of(context).isDesktop
                ? ScreenSize(context: context).size().width * 0.3
                : ScreenSize(context: context).size().width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(kDefaultRadius))),
                height: ScreenSize(context: context).size().height,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenSize(context: context).size().height * 0.05,
                    horizontal:
                        ScreenSize(context: context).size().height * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fullname,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                fontSize:
                                    ScreenSize(context: context).size().height *
                                        0.03,
                              )).tr(),
                      DefaultTextStyle(
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall!,
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TypewriterAnimatedText('Flutter Developper'),
                            TypewriterAnimatedText('Mobile Apps Developper'),
                            TypewriterAnimatedText('Computer Teacher'),
                            TypewriterAnimatedText('Developper Mentor'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                      SizedBox(
                        height:
                            ScreenSize(context: context).size().height * 0.02,
                      ),
                      Wrap(
                        children: skils
                            .map(
                              (e) => CustomChipWidget(text: e),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
