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
              crossAxisAlignment:  CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.orange,
                ),

                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
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
