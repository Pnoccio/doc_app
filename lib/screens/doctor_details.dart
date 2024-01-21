// ignore_for_file: sized_box_for_whitespace

import 'package:doc_app/components/custom_app_bar.dart';
import 'package:doc_app/components/detail_body.dart';
// import 'package:doc_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/about_doctor.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: 'arrow_back_ios',
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
            icon: FaIcon(
              isFav ? Icons.favorite_rounded : Icons.favorite_outlined,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: <Widget>[
            AboutDoctor(),
            DetailBody(),
          ],
        ),
      ),
    );
  }
}