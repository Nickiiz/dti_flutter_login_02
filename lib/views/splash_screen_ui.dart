// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:dti_flutter_login_02/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override // initState ใช้ได้เฉพาะ Stf
  //คำสั่งหน่วงเวลาเปลี่ยนไปหน้า homeui
  // void initState() {
  //   Future.delayed(
  //     Duration(
  //       seconds: 3,
  //     ),
  //     () => Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => HomeUI(),
  //       ),
  //     ),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 101, 147),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text(
                  '😁 DTI APP 01 😒',
                  style: GoogleFonts.sedgwickAve(
                      fontSize: MediaQuery.of(context).size.width * 0.075,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'V1.0.0',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(194, 223, 223, 223)),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  'Created by : Panuwat DTI-SAU',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(194, 223, 223, 223)),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.08,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
