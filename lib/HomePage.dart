import 'package:flutter/material.dart';
import 'package:navigation_splashscreen/DetailsScreen.dart';
import 'package:navigation_splashscreen/SplashScreen.dart';


class HomePage extends StatelessWidget {
  var arrNames = ['AFGHANISTAN', 'PAKISTAN', 'CHINA', 'INDIA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            title:Text (arrNames[index]),
            subtitle: Text('Number'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen (countryName: arrNames[index]),));

            },
          );
        },
            itemCount: arrNames.length,
            separatorBuilder: (context, index){
              return Divider(height: 100, thickness: 2,);
            }
        ),
        //for logout and go back to loginpage
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => navigation_splashscreen()),);
    },
         tooltip: 'LogOut',
         child: Icon(Icons.exit_to_app),
    ),
    );
  }
}



