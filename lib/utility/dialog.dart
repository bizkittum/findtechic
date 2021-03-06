import 'package:devfindtechnic/utility/my_style.dart';
import 'package:flutter/material.dart';

Future<Null> normalDialog(
    BuildContext context, String title, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: ListTile(
        leading: MyStyle().showLogo(),
        title: Text(
          title,
          style: MyStyle().pinkStyle(),
        ),
        subtitle: Text(
          message,
          style: MyStyle().darkStyle(),
        ),
      ),
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
}
