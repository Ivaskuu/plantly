import 'package:flutter/material.dart';

import 'pages/plants_list/plants_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]); // Enter fullscreen
    //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values); // Exit fullscreen

    return MaterialApp(
      title: 'Plantly',
      theme: ThemeData(primarySwatch: Colors.green),
      home: PlantsListPage(),
    );
  }
}
