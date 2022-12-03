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
backgroundColor: Colors.red,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 70,
                                          ),
CircleAvatar(
  radius: 50,

  backgroundColor: Colors.white,
  backgroundImage: AssetImage("assets/images/remi.jpg"),
),
                        Text(
                                                  'Reminston',
                         style: TextStyle(
                           fontFamily: 'Pacifico',
                           fontSize: 30,
                         fontWeight: FontWeight.bold,
                           color:  Colors.white70,
                         ),
                        ),
                        SizedBox(
                          width: double.infinity,
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color:  Colors.white,
                          ),
                        ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            color: Colors.red.shade300,
                                            padding: EdgeInsets.all(10),
                                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                            child: Row(
                                              children: <Widget> [
                                              Icon(
                                                Icons.phone ,
size: 30,
color: Colors.white,
                                              ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Text (
                                                    '+91 822 00 66 101',
                                                  style: TextStyle(
                                                                                                      fontFamily: 'SourceSansPro',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.normal,
                                                  color:  Colors.white,
                                                ),
                                               ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            color: Colors.red.shade300,
                                            padding: EdgeInsets.all(10),
                                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                            child: Row(
                                              children: <Widget> [
                                                Icon(
                                                  Icons.email ,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Text (
                                                  'reminstoncs@gmail.com',
                                                  style: TextStyle(
                                                    fontFamily: 'SourceSansPro',
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.normal,
                                                    color:  Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
            ],
          ),
        ),

      )
    );
  }
}
