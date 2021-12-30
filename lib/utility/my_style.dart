import 'dart:ui';

import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Color(0xffc96f53);
  Color primaryColor = Color(0xffff9e80);
  Color lightColor = Color(0xffffd0b0);

  TextStyle darkStyle() => TextStyle(color: darkColor);
  TextStyle whiteStyle() => TextStyle(color: Colors.white);
  TextStyle activeStyle() => TextStyle(
        color: Colors.yellow.shade400,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );

      TextStyle pinkStyle() => TextStyle(
        color: Colors.pink.shade600,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );

  Widget showLogo() => Image(
        image: AssetImage('images/logo.png'),
      );

  SafeArea buildBackground(double screenWidth, double screenHeight) {
    //SefeArea buildbackgroud ในส่วนของสร้าง body พื้นหลัง
    return SafeArea(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top1.png')),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top2.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom1.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom2.png')),
            ),
          ],
        ),
      ),
    );
  }

  MyStyle();
}
