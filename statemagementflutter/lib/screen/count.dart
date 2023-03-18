import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/count_provider.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  
  @override
  void initState() { // a function started primarily
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(title: const Text("Count Example")),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            ifbuild();
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
          // context.read<CountProvider>().setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void ifbuild() {
    print("text build");
  }
}
