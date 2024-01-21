import 'package:doc_app/components/info_card.dart';
import 'package:doc_app/utils/config.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return const Row(
      children: <Widget>[
        InfoCard(label: 'Patients', value: '109'),
        SizedBox(width: 15),
        InfoCard(label: 'Experience', value: '10 years'),
        SizedBox(width: 15),
        InfoCard(label: 'Ratings', value: '4.6'),
      ],
    );
  }
}
