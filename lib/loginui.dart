import 'package:flutter/material.dart';
import 'constants.dart';
import 'loginscreen.dart';

void main()
{
   runApp(Startapp());
}

class  Startapp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title:  appname,
    );
  }
}
