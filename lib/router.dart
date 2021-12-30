import 'package:devfindtechnic/states/create_accound.dart';
import 'package:devfindtechnic/states/my_service_technicial.dart';
import 'package:devfindtechnic/states/my_service_user.dart';
import 'package:flutter/material.dart';
import 'package:devfindtechnic/states/authen.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context)=>Authen(),
  '/createAccoount':(BuildContext context)=> CreateAccount(),
  '/myServiceUser':(BuildContext context)=> MyServiceUser(),
  '/myServiceTechnicial':(BuildContext context)=> MyServiceTechnicial(),
};
