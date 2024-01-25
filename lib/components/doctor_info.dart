import 'package:doc_app/components/info_card.dart';
import 'package:doc_app/utils/config.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    super.key,
    required this.patients,
    required this.experiecnce,
  });

  final int patients;
  final int experiecnce;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Row(
      children: <Widget>[
        InfoCard(
          label: 'Patients',
          value: '$patients',
        ),
        const SizedBox(
          width: 15,
        ),
        InfoCard(
          label: 'Experience',
          value: '$experiecnce years',
        ),
        const SizedBox(
          width: 15,
        ),
        const InfoCard(
          label: 'Ratings',
          value: '4.6',
        ),
      ],
    );
  }
}
