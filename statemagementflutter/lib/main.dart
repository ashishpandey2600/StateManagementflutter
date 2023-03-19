import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/auth_provider.dart';
import 'package:statemagementflutter/provider/count_provider.dart';
import 'package:statemagementflutter/provider/dark_theme.dart';
import 'package:statemagementflutter/provider/exampleoneprovider.dart';
import 'package:statemagementflutter/provider/favourite_provider.dart';
import 'package:statemagementflutter/screen/count.dart';
import 'package:statemagementflutter/screen/darttheme.dart';
import 'package:statemagementflutter/screen/exampleone.dart';
import 'package:statemagementflutter/screen/favourite/favouritescreen.dart';
import 'package:statemagementflutter/screen/loginscreen.dart';
import 'package:statemagementflutter/screen/value_notify_listner.dart';

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
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProdider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
          ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<DarkThemeProvider>(context);
            return MaterialApp
            (
            
              
              theme: themeChanger.themeMode,
              title: "Provider ",
              home: LoginScreen(),
          );
        }
        ),
        );
  }
}
