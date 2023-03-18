import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/count_provider.dart';
import 'package:statemagementflutter/provider/exampleoneprovider.dart';
import 'package:statemagementflutter/screen/count.dart';
import 'package:statemagementflutter/screen/exampleone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CountProvider()),
        ChangeNotifierProvider(create: (_)=>ExampleOneProdider()),
        
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        title: "Provider ",
        home: const ExampleOne(),
      ),
    );
  }
}
