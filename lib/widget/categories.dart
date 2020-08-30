import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/category.dart';

import 'commons.dart';
import 'custom_text.dart';
import 'package:flutter/material.dart';

List<category> categoriesList = [
  category(name: "All",image: "fork1.png"),
  category(name: "Offers",image: "download.png"),
  category(name: "Chinese",image: "chinese.jpg"),
  category(name: "Dessert",image: "deset.png"),
  category(name: "Italian",image: "italy.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: customgrey,
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal ,
        itemCount: categoriesList.length,
        itemBuilder: (_,index ){
          return Padding(

            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,


                      boxShadow: [
                        BoxShadow(
                            color: grey,
                            offset: Offset(1,5),
                            blurRadius: 12

                        )
                      ],

                    ),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Image.asset("Food/${categoriesList[index].image}",fit: BoxFit.fill,width: 52,height:52,),)
                ),
                SizedBox(height: 10,),
                CustomText(text: categoriesList[index].name ,size: 15,color:black)

              ],
            ),
          );
        },
      ),
    );
  }
}
