import 'package:flutter/material.dart';
import 'pages/plants_list/plants_list_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    //SystemChrome.setEnabledSystemUIOverlays([]); // Enter fullscreen
    //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values); // Exit fullscreen
    
    return new MaterialApp
    (
      title: 'Plantly',
      theme: new ThemeData(primarySwatch: Colors.green),
      home: new PlantsListPage(),
    );
  }
}