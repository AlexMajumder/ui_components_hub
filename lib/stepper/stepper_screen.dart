import 'package:flutter/material.dart';
import 'package:flutter_steps/flutter_steps.dart';
import 'package:intl/intl.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

List<String> titles = ['Step One', 'Step Two', 'Step Three', 'Step Four', 'Step Five'];
List<String> subtitles = ['Subtitle for Step 1', 'Subtitle for Step 2', 'Subtitle for Step 3', 'Subtitle for Step 4', 'Subtitle for Step 5'];

List<Steps> customSteps0 = [
  ...List.generate(
    5,
        (i) => Steps(
      title: 'Title ${i + 1}',
      subtitle: DateFormat('dd/MM/y').format(DateTime.now()),
      isActive: i < 2 ? true : false,
      leading: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 16,
        ),
      ),
    ),
  )
];

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body:  FlutterSteps(
          steps: customSteps0,
          showSubtitle: true,
          hideInactiveLeading: true,
          direction: Axis.vertical,
          titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),

    );
  }
}
