import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/exampleoneprovider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProdider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Example One Provider")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExampleOneProdider>(builder: (context, value, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    value.setValue(val);
                  });
            }),
            Consumer<ExampleOneProdider>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Center(child: Text("Container 1")),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.withOpacity(value.value)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Center(
                        child: Text(
                          "Container 2",
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(value.value)),
                    ),
                  )
                ],
              );
            }),
          ]),
    );
  }
}
