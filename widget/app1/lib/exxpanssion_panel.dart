import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class expan_panel extends StatefulWidget {
  const expan_panel({super.key});

  @override
  State<expan_panel> createState() => _expan_panelState();
}

class _expan_panelState extends State<expan_panel> {
  //expansison
  bool kutuAcikMi = false;
  //expansison
  List<bool> kutularinDurumu = [
    false,
    false,
    false,
  ];
  //alert widget
  onayAl_ios() {
    showDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
              title: Text("Onay Al"),
              actions: const [
                CupertinoDialogAction(child: Text("yes")),
                CupertinoDialogAction(child: Text("no")),
              ],
            ));
  }

  //alert widget
  onayAl_android() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Onay Al"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                onayAl_android();
              },
              child: Text("android")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                onayAl_ios();
              },
              child: Text("ios")),
          SizedBox(
            height: 30,
          ),
          ExpansionPanelList(
            expansionCallback: (index, isOpen) {
              for (var i = 0; i < kutularinDurumu.length; i++) {
                kutularinDurumu[i] = false;
              }
              setState(() {
                kutularinDurumu[index] = !isOpen;
              });
              print('tıkla $isOpen');
            },
            children: [
              ExpansionPanel(
                headerBuilder: ((context, isExpanded) {
                  return Text("başlık");
                }),
                body: Text("Emirhan"),
                isExpanded: kutularinDurumu[0],
              ),
              ExpansionPanel(
                headerBuilder: ((context, isExpanded) {
                  return Text("başlık");
                }),
                body: Text("Emirhan"),
                isExpanded: kutularinDurumu[1],
              ),
              ExpansionPanel(
                headerBuilder: ((context, isExpanded) {
                  return Text("başlık");
                }),
                body: Text("Emirhan"),
                isExpanded: kutularinDurumu[2],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
