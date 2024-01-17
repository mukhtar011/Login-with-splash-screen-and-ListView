
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_splashscreen/DetailsScreen.dart';

class DetailsScreen extends StatelessWidget {
  final String countryName;

  DetailsScreen({required this.countryName});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for $countryName'),
      ),
      body: Center(
        child: Text('WELCOME TO $countryName'),

      ),
    );
  }
}
