import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class page_view extends StatefulWidget {
  const page_view({super.key});

  @override
  State<page_view> createState() => _page_viewState();
}

class _page_viewState extends State<page_view> {
  final controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
