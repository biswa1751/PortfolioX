import 'package:flutter/material.dart';
import 'package:portfolio_x/colors.dart';
import 'package:portfolio_x/data/speaker_data.dart';
import 'package:portfolio_x/footer.dart';
import 'package:portfolio_x/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        ...allSpeakers
            .map((speaker) => HeaderScreen(
                  speaker: speaker,
                ))
            .toList(),
            //TODO : Change the following data
        // if (context.isMobile) IntroductionWidget(
        //   introductionText: allSpeakers[0].introductionText,
        //   profileUrl: allSpeakers[0].profileUrl,
        // ).p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
