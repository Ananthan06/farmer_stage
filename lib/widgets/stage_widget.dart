
import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  final Map<String, dynamic> step;

  StepWidget(this.step);

  @override
  Widget build(BuildContext context) {
    final stepStatus = step["current_step"];
    final isCompleted = stepStatus == "completed";
    final isCurrent = stepStatus == "current";
    int stepNumber = step["stepNumber"]??0;

    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment:  stepNumber.isOdd ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: 20,
              height: 60,

              color: isCompleted ? Colors.green : (isCurrent ? Colors.blue : Colors.grey.shade500),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            // margin: EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: isCompleted ? Colors.green : (isCurrent ? Colors.blue : Colors.grey.shade500),
              gradient:isCurrent?  LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue, // Left color
                  Colors.grey.shade500,  // Right color
                ],
            ): null,),
            child: Text("${stepNumber.toString()}. ${step["taskDescription"]}"),
          ),
        ],
      ),
    );
  }
}
