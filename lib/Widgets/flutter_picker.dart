import 'package:flutter/material.dart';

class FlutterPicker extends StatelessWidget {
  const FlutterPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime(2021, 1, 1),
              firstDate: DateTime(2021, 1, 1),
              lastDate: DateTime(2021, 1, 31),
            );
          },
          child: Text(
            "Pick Date",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
          },
          child: Text(
            "Pick Time",
          ),
        ),
      ],
    );
  }
}
