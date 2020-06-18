import 'package:flutter/material.dart';
import 'package:portfolio_x/data/speaker_data.dart';
import 'package:portfolio_x/header.dart';

//This widget is for testing the stepper design
class MentorInfo extends StatefulWidget {
  @override
  _MentorInfoState createState() => _MentorInfoState();
}

class _MentorInfoState extends State<MentorInfo> {
  int currentStepper = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: currentStepper,
      onStepTapped: (step) => setState(() => currentStepper = step),
      steps: allSpeakers
          .map((speaker) => Step(
              content: HeaderScreen(
                speaker: speaker,
              ),
              title: Text(speaker.name)))
          .toList(),
    );
  }
}
