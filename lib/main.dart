
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widget/Detailscreen.dart';
import 'package:food_app/widget/categories.dart';
import 'package:food_app/widget/ccd.dart';
import 'package:food_app/widget/commons.dart';
import 'package:food_app/widget/custom_text.dart';
import 'package:food_app/widget/dastan.dart';
import 'package:food_app/widget/domi.dart';
import 'package:food_app/widget/foodcard.dart';
import 'package:food_app/widget/myclass.dart';
import 'package:food_app/widget/salad.dart';
import 'contraints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontWeight: FontWeight.bold),
            body1: TextStyle(color: kTextColor),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[

            Row(

              children: [

                Padding(
                    padding : const EdgeInsets.all(10.0),
                    child:Text("Delivers to",style: TextStyle(fontSize: 20)),
                ),
                MyStatefulWidget(),
                Spacer(),
                IconButton(icon: (Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTpayOHEOLPITYbiXxQf3i3r21zqjiqWGk0mg&usqp=CAU')), onPressed: null)],
            ),

            SizedBox(
              height: 10,
            ),
            Categories(),
            Column(
              children: [
                Row(
                  children: [
                    Foodbox(press:() {Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailScreen();}),);},titlea:"Biriyani Adda", image:"Food/Biriyani.jpg", address:"Shop no 5, Gelock road,",addressa: "Pune 411049 ", location:"22 min", distance: "7 km"),
                    Foodbox(press:() {Navigator.push(context, MaterialPageRoute(builder: (context) {return Salad();}),);},titlea:"Salad Bristo", image:"Food/salad.png", address:"Shop no 7, FC road",addressa: "Pune 411047", location:"10 min", distance: "3 km"),

                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Foodbox(press:() {Navigator.push(context, MaterialPageRoute(builder: (context) {return Dastan();}),);},titlea:"Dastan Cafe", image:"Food/dastan.jpg", address:"Shop no 5, Baner road",addressa: "Pune 411044", location:"25 min", distance: "8 km"),
                    Foodbox(press:() {Navigator.push(context, MaterialPageRoute(builder: (context) {return ccd();}),);},titlea:"Cafe Coffee Day", image:"Food/ccd3.png", address:"Shop no 5, A.C road",addressa: "Pune 451040", location:"20 min", distance: "5 km"),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Foodbox(press:() {Navigator.push(context, MaterialPageRoute(builder: (context) {return domi();}),);},titlea:"Domino's Pizza", image:"Food/pizza.png", address:"Shop no 5, G.C road",addressa: "Pune 411048", location:"30 min", distance: "10 km"),
                  ],
                ),
              ],
            ),

          ],


        ),

      ),
    );


  }
}

