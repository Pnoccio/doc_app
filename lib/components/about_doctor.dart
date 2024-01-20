import 'package:flutter/material.dart';

import '../utils/config.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/images/profile.png'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          const Text(
            'Jafary Magoma',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
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
                color:  Colors.black,
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