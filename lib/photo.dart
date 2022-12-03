import 'dart:ffi';

import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text("Flutter Row Example"),
      // ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[

            Container(
              // margin: EdgeInsets.all(12.0),
              // padding: EdgeInsets.all(8.0),
              // alignment: Alignment.centerLeft,
              width: 100,
              color: Colors.red,
            ),




            Container(

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color:Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color:Colors.green,
                      ),
                    ]
                )

            ),


            Container(
              //   margin: EdgeInsets.all(12.0),
              //   padding: EdgeInsets.all(8.0),
              //   decoration:BoxDecoration(
              //       borderRadius:BorderRadius.circular(8),
              //       color:Colors.green
              //   ),
              //   child: Text("MySQL",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),

              width: 100,
              color:Colors.blue,
            )
          ]
      ),
    );
  }
}
