
import 'package:farmer_sections/widgets/stage_widget.dart';
import 'package:flutter/material.dart';

class StageStepList extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "serial": 1,
      "stageName": "FALLOW",
      "stage": [
        {"stepNumber": 1, "taskDescription": "RM meet personally to farmers", "current_step": "completed"},
        {"stepNumber": 2, "taskDescription": "RM meet personally to farmers", "current_step": "completed"},
        {"stepNumber": 3, "taskDescription": "land selection and soil testing and updating the result", "current_step": "completed"},
        {"stepNumber": 4, "taskDescription": "MB Ploughing ", "current_step": "completed"},
      ]
    },
    {
      "serial": 2,
      "stageName": "SOWING",
      "stage": [
        {"stepNumber": 12, "taskDescription": "Treated seeds are sown directly in the field as soon as the soil is moist", "current_step": "completed"},
        {"stepNumber": 13, "taskDescription": "Fertilizer combination 1", "current_step": "current"},
        {"stepNumber": 14, "taskDescription": "Pendimethalin 30 % ", "current_step": "next"},
        {"stepNumber": 15, "taskDescription": "Irrigation Based on the soil moisture", "current_step": "next"},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final stage = data[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 15,right: 15,top: 15),
                height: 50,
                width: double.infinity,
                color: Colors.purple,
                child: Center(child: Text('Stage: ${stage["stageName"]}',
                  style: const TextStyle(color: Colors.white),))),

            Column(
              children: stage["stage"].map<Widget>((step) {
                return StepWidget(step);
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
