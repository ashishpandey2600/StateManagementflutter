import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 10), (timer) {
      x++;
      print(x);
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),

            Center(
                child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            )),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                  
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ]),
    );
  }
}
