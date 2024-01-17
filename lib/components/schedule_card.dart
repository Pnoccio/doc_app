import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.calendar_today,
          color: Colors.white,
            size: 15,
          ),
          SizedBox(width: 5,),
          Text(
            'Monday, 11/28/2022',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20,),
          Icon(
            Icons.access_alarm,
            color: Colors.white,
            size: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
              child: Text(
                '2:00 PM',
                style: TextStyle(
                  color: Colors.white
                ),
              )
          ),
        ],
      ),
    );
  }
}
