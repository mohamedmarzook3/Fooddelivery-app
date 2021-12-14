import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details_screen.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final String price;
  final Function press;
  const FoodCard({
    Key? key, required this.title, required this.ingredient, required this.image, required this.price,required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(press)),);
          },
      
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 250,
        width: 200,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 240,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 40,
              child: Container(
                height: 131,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                  image: DecorationImage(image: AssetImage(image),
                  fit: BoxFit.fill
                  )
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 28,
              child: Container(
                height: 131,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            Positioned(
            right: 5,
            top: 95,
            child: Text("\ $price/-",style: Theme.of(context).textTheme.headline!.copyWith(color: kPrimaryColor),)),
            Positioned(
              top: 150,
              left: 30,
              child: Column(
              children: [
                Text(title,
                style: Theme.of(context).textTheme.title,),
                Text("with $ingredient",style: TextStyle(
                  color: kTextColor.withOpacity(.4)
                ),)
              ],
            ))
            /*Positioned(
              top: 0,
              right: 20,
              child: Container(
                height: 125,
                width: 141,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/2-pizza-png-image.png"))
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}