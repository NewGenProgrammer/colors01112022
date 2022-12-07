import 'package:colors01112022/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey =   GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wd = MediaQuery.of(context).size.width;
    // print(ht);

    return Scaffold(
      backgroundColor:  Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(imglogin,
                    height: ht * 0.40  ,
                    width: wd,
                    fit:BoxFit.cover ,
                  ),
                  Container(
                    height: ht * 0.40  ,
                    width: wd,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.3,0.9],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent,Colors.white]
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left:0,
                    right: 0,
                    child: Center(
                      child:RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: secondaryColor,
                              ),text: appname + '\n',
                              children: [
                                TextSpan(text:motto,
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey,
                                  ),)
                              ])

                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left:10,top: 10),
                child: Container(
                  child: Text (
                    '  LOGIN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient (
                          stops: [0.3,0.8],
                          colors: [primaryColor.withOpacity(0.2),Colors.white]
                      ),
                      border: Border(left: BorderSide(color:primaryColor,width: 5))
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  validator: (email){
                    if (email == null || email.isEmpty)
                      return "Enter the E-Mail ID or Mobile No.";
                   else
                      return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ) ,
                    prefixIcon: Icon(Icons.account_box,color: primaryColor),
                    labelText: "E-Mail ID or Mobile No.",
                    labelStyle: TextStyle(color: primaryColor,fontSize: 18),

                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ) ,
                    prefixIcon: Icon(Icons.lock_open,color: primaryColor),
                    labelText: "Password",
                    labelStyle: TextStyle(color: primaryColor,fontSize: 18),

                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){},
                  child: Text('Forget Password?',
                    style: TextStyle(color: secondaryColor,fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: ht* 0.08,
                  width: wd * 0.90,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: primaryColor,
                      shape:RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: (){},
                    child: Text('LOGIN',

                      style: TextStyle(
                        letterSpacing: 10,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have a account?'),
                  TextButton(onPressed: (){
                    if (!formkey.currentState!.validate()) {
                      print("INValid");
                    }
                      else {
                      print("Valid");
                    }

                  }, child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: primaryColor,
                    ),

                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
