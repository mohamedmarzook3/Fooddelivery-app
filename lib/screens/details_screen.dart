import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen(Function press);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),);
          },
            child: Row(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Transform(transform: Transform.rotate(angle: )),
                SafeArea(child: Align(alignment: Alignment.topLeft,
                child: Image(image: AssetImage("assets/icons/icons8-right-arrow-100.png"),
                height: 40,
                
                ),),),
                
                //Image(image: AssetImage("assets/icons/icons8-menu-100.png")),
              ],
            ),
          )
        ],
      ),
    ),);
  }
}