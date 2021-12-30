import 'package:devfindtechnic/utility/my_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  late double screenWidth, screenHeight;
  bool redEye = true;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: buildCreatAccount(),
      body: SafeArea(
        //คลิกที่ Stack คลิกหลอดไฟ wrap with widget เปลี่ยนชื่อเป็น SafeArea
        child: Stack(
          //เพิ่ม column เปลี่ยนชื่อเป็น Stack เพื่อเพิ่มลำดับรูปภาพ logo
          children: [
            //เรียกหน้า my_style.dart มาเป็น background แทน
            MyStyle().buildBackground(screenWidth, screenHeight),

            //เรียก my_style.dart showlogo
            //ใส่ Container ล้อม เพื่อจะกำหนดขนาด showlogo
            Positioned(
              top: 40, left: 16, //ให้โลโก้ ห่างจากขอบบน 40,ของซ้าย 16px
              child: buildLogo(),
            ),
            Center(
              //เปลี่ยน center เป็น Position
              //เอา center มาล้อม column ให้อยู่ตรงกลาง
              //เอา column มาล้อม buildUser
              child: Column(
                // column นี้ไว้จัดการส่วนของ user,password,button ต่างๆ
                mainAxisAlignment: MainAxisAlignment.end,
                //maiAxisAlignment center มาจัดให้ textfield อยู่ตรงกลาง
                children: [
                  buildUser(),
                  buildPassword(),
                  buildSignInEmail(),
                  buildSignGoogle(),
                  buildSignInFacebook(),
                  buildSignInApple(),
                  SizedBox(
                    height: screenHeight * 0.1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildCreatAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
        ),
        Text(
          'Non Account ?',
          style: MyStyle().whiteStyle(),
        ),
        TextButton(
          onPressed: ()=>Navigator.pushNamed(context, '/createAccoount'),
          // pushNamed คลิกไปแล้วกลับมาได้
          child: Text(
            'Create Account',
            style: MyStyle().activeStyle(),
          ),
        )
      ],
    );
  }

  Container buildSignInEmail() => Container(
        margin: EdgeInsets.only(top: 8),
        child: SignInButton(
          Buttons.Email,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

  Container buildSignGoogle() => Container(
        margin: EdgeInsets.only(top: 8),
        child: SignInButton(
          Buttons.GoogleDark,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

  Container buildSignInFacebook() => Container(
        margin: EdgeInsets.only(top: 8),
        child: SignInButton(
          Buttons.FacebookNew,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

  Container buildSignInApple() => Container(
        margin: EdgeInsets.only(top: 8),
        child: SignInButton(
          Buttons.AppleDark,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      //ตรง Container Textfield คลิกหลอดไฟ Exact Method เป็นชื่อ buildUser
      width: screenWidth * 0.6,
      //กำหนดความกว้าง ใช้ตัวแปรจาก screenWidth x 0.6 = 60% ของจอ
      //สร้าง Textfield แล้วคลิกหลอดไฟใ่ส Container ครอบ
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyStyle().darkColor,
          ),
          //รูป icon คนเอาจากเว็บ materail.io perm_identity คือรูปคน เปลี่ยนรูปอื่นได้เอาชื่อมาใส่ที่นี่
          labelStyle: MyStyle().darkStyle(),
          labelText: 'User :',
          enabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(30), //ทำให้ textfield โค้งมนสวยงาม
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().lightColor)),
          //สร้างกรอบ Textfild ใส่ขอบ
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      //ตรง Container Textfield คลิกหลอดไฟ Exact Method เป็นชื่อ buildUser
      width: screenWidth * 0.6,
      //กำหนดความกว้าง ใช้ตัวแปรจาก screenWidth x 0.6 = 60% ของจอ
      //สร้าง Textfield แล้วคลิกหลอดไฟใ่ส Container ครอบ
      child: TextField(
        obscureText: redEye,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                redEye
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye_sharp,
                //ใส่ redeye เวลากดปิดรหัสผ่านให้เป็นรูปตา ปิด ตาเปิด
                color: MyStyle().darkColor,
              ),
              onPressed: () {
                setState(() {
                  redEye = !redEye;
                });
              }),
          prefixIcon: Icon(
            Icons.lock_clock_outlined,
            color: MyStyle().darkColor,
          ),
          //รูป icon คนเอาจากเว็บ materail.io perm_identity คือรูปคน เปลี่ยนรูปอื่นได้เอาชื่อมาใส่ที่นี่
          labelStyle: MyStyle().darkStyle(),
          labelText: 'Password :',
          enabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(30), //ทำให้ textfield โค้งมนสวยงาม
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().lightColor)),
          //สร้างกรอบ Textfild ใส่ขอบ
        ),
      ),
    );
  }

  Container buildLogo() {
    //Container Exact Method คลิกที่หลอดไฟตั้งชื่อว่า buildLogo
    return Container(
      width: screenWidth * 0.4, //กำหนดขนาดความกว้างx0.4 ให้ logo เล็กลง
      child: MyStyle().showLogo(),
    );
  }
}
