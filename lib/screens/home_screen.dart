import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/category_title.dart';
import 'package:flutter_application_1/screens/details_screen.dart';
import 'package:flutter_application_1/screens/food_card.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

final _auth = FirebaseAuth.instance;

  late Function press;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      floatingActionButton: FloatingActionButton(onPressed: null,
      child:  IconButton(onPressed: null, icon: Icon(Icons.add,size: 30,)
      ),
      backgroundColor: Colors.red[200],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*SafeArea(child: Align(alignment: Alignment.topRight,
          child: IconButton(onPressed: null, icon: Icon(Icons.menu),
          ),
          /*child: IconButton(onPressed: null, icon: Icon(Icons.menu),
          ),*/
          )),*/
          
          Padding(
            padding: const EdgeInsets.all(1),
            child: Text("  Simple way to find \n  Tasty food",style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(
                  title: "All",
                  active: true,
                ),
                CategoryTitle(
                  title: "Italian",
                ),
                CategoryTitle(
                  title: "Asian",
                ),
                CategoryTitle(
                  title: "Chinese",
                ),
                CategoryTitle(
                  title: "Burgers",
                ),
                ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
            height: 40,
            width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kBorderColor),
          ),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search Here",
              hintStyle: TextStyle(color: ksecondaryColor),
              icon:  IconButton(onPressed: null, icon: Icon(Icons.search))
            ),
          )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(image: 'assets/images/2-pizza-png-image.png', ingredient: 'tomato', price: '99', title: 'Pizza', press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailsScreen(press);}));}, ),
                FoodCard(image: 'assets/images/9-2-burger-png-hd.png', ingredient: 'chicken', price: '65', title: 'Burger', press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailsScreen(press);}));}, ),
                
                SizedBox(width: 20,)
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(right: 20,top: 50),)
        ],
      ),
      drawer: Drawer(
        elevation: 11.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Mohamed Marzook'), accountEmail: Text('marzookalhindee@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('MM'),
            ),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text('Cart'),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text('Order'),
              leading: Icon(Icons.shop),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(
              height: 1,
              thickness: 5,
            ),
            ListTile(
              title: Text('Security'),
              leading: Icon(Icons.security),
            ),
            Divider(
              height: 1,
            ),
            ListTile( onTap: () async{
        await _auth.signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

      },
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Food Delivery",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red[300],
      ),
      //body: Column(children: <Widget>[Padding(padding: const EdgeInsets.only(right: 20, top: 50), child: Align(alignment: Alignment.topRight, child: SvgPicture.asset("flutter_application_1\assets\icons\icons8-menu-100.png", height: 11, ),),),],),);
      /*body: Center(
        child: Text("Home Screen"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        await _auth.signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

      },
      child: Icon(Icons.logout),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(title: Text('search'), icon: Icon(Icons.search),),BottomNavigationBarItem(title: Text('home'), icon: Icon(Icons.home),)]
      ),
      appBar: AppBar(title: Text('Food Delivery',textAlign: TextAlign.center),/*leading: Icon(Icons.food_bank),*/
      actions: [IconButton(onPressed: null, icon: Icon(Icons.search),)],
      ),
      drawer: Drawer(
        elevation: 11.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Mohamed Marzook'), accountEmail: Text('marzookalhindee@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('MM'),
            ),
            ),
            ListTile(
              title: Text(''),
            )
          ],
        ),
      ),*/
    );
  }
}



