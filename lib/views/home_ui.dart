// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          'DTI APP 01',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 101, 147),
      ),
      drawer: Drawer(
        child: ListView(
          //listview เหมือน colum คือบนลงล่าง แต่listviwe scoll ได้อัตโนมัติ ไม่ต้องใช้ singlechildscollviwe
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'IOT SAU 2023',
              ),
              accountEmail: Text(
                'Souteast Asia University',
              ),
              currentAccountPicture: Image.asset(
                'assets/images/logo.png',
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 101, 147),
              ),
            ),
            ListTile(
              //leading:อยู่หน้า ,title:ตรงกลาง ,subtitle:ตรงกลาง ,trailing:อยู่หลัง
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                'หน้าหลัก',
              ),
              subtitle: Text(
                'หลักจิงๆนะ',
              ),
              trailing: Icon(Icons.add_alert),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.message,
              ),
              title: Text(
                'ข่าวสารใหม่',
              ),
              subtitle: Text(
                'ล่าสุด',
              ),
              trailing: Text(
                '0',
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.message,
              ),
              title: Text(
                'กิจกรรมล่าสุด',
              ),
              subtitle: Text(
                'ล่าสุด',
              ),
              trailing: Text(
                '0',
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.message,
              ),
              title: Text(
                'ร้องเรียน',
              ),
              subtitle: Text(
                'ล่าสุด',
              ),
              trailing: Text(
                '0',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
