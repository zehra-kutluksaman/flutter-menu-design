import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   color: Color.fromARGB(255, 101, 18, 18),
        // ),
      ),
    );
  }
}
