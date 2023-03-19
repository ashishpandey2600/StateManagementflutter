import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/dark_theme.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("theme change")),
      body: Column(children: [
        RadioListTile<ThemeData>(
            title: Text("Light mode"),
            value: ThemeData.light(),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
            RadioListTile<ThemeData>(
            title: Text("Dark mode"),
            value: ThemeData.dark(),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
            RadioListTile<ThemeData>(
            title: Text("System mode"),
            value: ThemeData.dark(),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme)
      ]),
    );
  }
}
