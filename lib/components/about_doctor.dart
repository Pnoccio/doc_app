// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../utils/config.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key, required this.doctor});

  final Map<dynamic, dynamic> doctor;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 65.0,
            backgroundImage: NetworkImage("http://127.0.0.1:8000${doctor['doctor_profile']}"),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          Text(
            'Dr ${doctor['doctor_name']}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          Config.spaceMedium,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'MUHAS (Muhimbili University of Health and Applied Science)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Muhimbili National Hospital',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
