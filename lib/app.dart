import 'package:armeum_shop/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ARAppTheme.lightTheme,
      darkTheme: ARAppTheme.darkTheme,

    );
  }
}