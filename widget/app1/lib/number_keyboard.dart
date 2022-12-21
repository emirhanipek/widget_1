import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class number_keyboard extends StatelessWidget {
  const number_keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sldakş"),
        ),
        body: Container(
            width: 200,
            height: 300,
            color: Colors.red,
            child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "No Giriniz : ",
                    hintText: "No : ",
                    icon: Icon(Icons.phone_iphone)))));
  }
}
