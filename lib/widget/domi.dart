import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contraints.dart';
import 'commons.dart';
import 'custom_text.dart';

class domi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:20, right: 10,top: 50),
        child: Column(children: <Widget>[
          Row(children: <Widget>[SvgPicture.asset("assets/icons/backward.svg",height: 15),],
          ),
          Positioned(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Food/pizza.png"),fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Domino's Pizza\n",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 10),
          Padding(padding:EdgeInsets.symmetric(horizontal:13.0),
            child:Container(height:1.0, width:300.0, color:black,),),

          SizedBox(height: 10),
          Positioned(
            child: Row(children: <Widget>
            [
              Icon(Icons.star,color: Colors.yellow,size: 25,),
              Icon(Icons.star,color: Colors.yellow,size: 25,),
              Icon(Icons.star,color: Colors.yellow,size: 25,),
              Icon(Icons.star,color: Colors.yellow,size: 25,),
              Icon(Icons.star_half,color: Colors.yellow,size: 25,),

              Spacer(), Spacer(), Spacer(), Spacer(), Spacer(),
              Icon(Icons.access_time,size: 25,),
              CustomText(text:"30 min",),
              Icon(Icons.location_on,size: 25,),
              CustomText(text:"10 km",)
            ]
            ),
          ),
          SizedBox(height: 13),
          Row(children: <Widget>[
            Text("Popular", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: grey),),
            Icon(Icons.arrow_drop_down_circle),],),
          SizedBox(height: 56,),
          Row(children: <Widget>[

            Text("Good food is always cooking! Go ahead, order\n""some yummy items from the menu. Discover\n""the best food & drinks",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: grey),),
          ],
          ),
          SizedBox(height: 30),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),


                    Text(
                      "Add",
                      style: Theme.of(context).textTheme.button,
                    ),



                  ],
                ),
              ),

            ],),

        ],
        ),
      ),
    );
  }
}