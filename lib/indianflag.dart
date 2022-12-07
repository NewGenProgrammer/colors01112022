import 'package:flutter/material.dart';
//03.12.2022 id card display
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white70,
          body:SafeArea(
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.orange,
                ),

   Container(
  height: 100,
  width: double.infinity,
child: Image.asset('assets/images/wheel.jpg'),
   color: Colors.white,
     // decoration: BoxDecoration(
     //   image: DecorationImage(
     //     image: AssetImage('assets/images/wheel.jpg'),
     //   ),
     //
     //   shape: BoxShape.rectangle,
     // ),
),


                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ],
            ),
          ),

        )
    );
  }
}
