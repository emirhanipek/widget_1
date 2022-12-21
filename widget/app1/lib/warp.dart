import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class wrap extends StatelessWidget {
  const wrap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Wrap(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Text("1"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
                child: Text("2"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Text("3"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: Text("4"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Text("5"),
              ),
              Text(
                "WRAP WİDGETİ SAYFA KÜÇÜLDÜĞÜ ZAMAN KENDİSİNİ DARALTIR VEYA UZATIR BÖYLECE BİR RESPONSİVE YAPIYA SAHİP OLUR",
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
