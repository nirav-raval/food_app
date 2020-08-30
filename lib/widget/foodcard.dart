import 'package:flutter/material.dart';

import 'commons.dart';
import 'custom_text.dart';

class Foodbox extends StatelessWidget {

  final String titlea;
  final String address;
  final String addressa;
  final String image;
  final String distance;
  final String location;
  final Function press;

  const Foodbox({
    Key key, this.titlea, this.address, this.addressa, this.image, this.distance, this.location, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 340,
        width: 178,
        margin: const EdgeInsets.only(left: 13.0, right: 10.0, top: 20),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                height: 340,
                width: 178,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12
                ),
              ),
            ),
            Container(
              height: 160,
              width: 195,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
            ),
            Positioned(
              left: -20,
              top:-8,
              child: Container(
                height: 150,
                width: 200,
                margin: EdgeInsets.only(left: 7.0, right: 20.0, top: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage(image)
                    ,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 10,
              child: Column(
                children: <Widget>[

                  Text(titlea, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,),),
                ],
              ),
            ),
            Positioned(
              top: 190,
              left: 11,
              child: Column(
                children: <Widget>[
                  CustomText(text: address, size: 15,color: lightgrey,),
                  CustomText(text: addressa, size: 15,color: lightgrey,),
                  Padding(padding:EdgeInsets.symmetric(horizontal:13.0),
                    child:Container(height:1.0, width:130.0, color:black,),),
                ],
              ),
            ),
            Positioned(
              top: 255,
              left: 27,
              child: Row(
                children: <Widget>[
                  Icon(Icons.star,color: Colors.yellow,size: 25,),
                  Icon(Icons.star,color: Colors.yellow,size: 25,),
                  Icon(Icons.star,color: Colors.yellow,size: 25,),
                  Icon(Icons.star,color: Colors.yellow,size: 25,),
                  Icon(Icons.star_half,color: Colors.yellow,size: 25,)
                ],
              ),
            ),
            Positioned(
              top: 300,
              left: 20,
              child: Row(
                children: <Widget>[
                  Icon(Icons.access_time,size: 25,),
                  CustomText(text:location,),
                  Icon(Icons.location_on,size: 25,),
                  CustomText(text:distance,)
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}