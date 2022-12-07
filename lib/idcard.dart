import 'package:flutter/material.dart';

import 'constants.dart';
//03.12.2022 id card display
void main() {
  runApp(MyApp());
}

Text disptext ({String str ='iam reminston'})
{
  return Text(
    str,
    style: TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 30,
      fontWeight: FontWeight.normal,
      color:  Colors.white70,
    ),
  );
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
                disptext (str:'Remi'),
                 disptext (),
                Text(
                  'Reminston',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
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
                Card(
                    color: Colors.red.shade300,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: ListTile(
                      leading:Icon(
                        Icons.phone ,
                        size: 30,
                        color: Colors.white,
                      ),
                      title:Text (
                        '+91 822 00 66 101',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color:  Colors.white,
                        ),
                      ) ,
                    )
                ),

                Card(
                  color: Colors.red.shade300,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: ListTile(
                    leading:Icon(
                      Icons.email ,
                      size: 30,
                      color: Colors.white,
                    ),

                    title: Text (
                      'reminstoncs@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color:  Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        )
    );
  }
}


