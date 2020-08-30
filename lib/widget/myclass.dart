import 'dart:ui';

import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Aundh';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,

      iconSize: 2,
      elevation: 10,
      style: TextStyle(color: Colors.yellow),
      underline: Container(
        height: 2,
        color: Colors.yellow,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Aundh', 'Baner', 'Wakad', 'Pimpri']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
