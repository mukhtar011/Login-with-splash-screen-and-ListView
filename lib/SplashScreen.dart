
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_splashscreen/HomePage.dart';
import 'package:navigation_splashscreen/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:navigation_splashscreen/DetailsScreen.dart';



class navigation_splashscreen extends StatelessWidget {
  var uUserController = TextEditingController();
  var uPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Login Page'),
      ),
      body: Container(
        color: Colors.amber.shade300,
        child: Center(
          child: Container(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: uUserController,
                    decoration: InputDecoration(
                        labelText: 'Username/Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        )


                    ),
                  ),
                  SizedBox(height: 15.0,),
                  TextField(
                    controller: uPassController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 15.0,),
                  ElevatedButton(
                    onPressed: () async {
                      var user = uUserController.text.toString();
                      var pass = uPassController.text.toString();
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
                      ));
                      print('Login Button Pressed');
                    }, child: Text('Login',),

                  )
                ],
              ),
            ),
          ),
        ),
      ),


    );

  }
}
