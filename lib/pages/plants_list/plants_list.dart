import 'package:flutter/material.dart';
import 'plant_preview.dart';
import '../../classes/plant.dart';

final List<Plant> plantsList =
[
  new Plant('Morning Glory', 45.0, 'plant1.png'),
  new Plant('Sunshine Glory', 15.0, 'plant2.png'),
  new Plant('New Day Hope', 29.99, 'plant3.png'),
];

class PlantsListPage extends StatefulWidget
{
  @override
  _PlantsListPageState createState() => new _PlantsListPageState();
}

class _PlantsListPageState extends State<PlantsListPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Material
    (
      borderRadius: new BorderRadius.circular(8.0),
      child: new Scaffold
      (
        appBar: new AppBar
        (
          backgroundColor: Colors.white,
          elevation: 1.0,
          leading: new IconButton
          (
            onPressed: () {},
            icon: new Icon(Icons.menu, color: Colors.black),
          ),
          title: new Row
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>
            [
              new Text('Plantly', style: new TextStyle(color: Colors.black, fontSize: 26.0, fontWeight: FontWeight.w700)),
              new Text('.', style: new TextStyle(color: Colors.green, fontSize: 36.0, fontWeight: FontWeight.w700))
            ],
          ),
          actions: <Widget>
          [
            new IconButton
            (
              onPressed: () {},
              icon: new Icon(Icons.shopping_basket, color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: new Column
        (
          children: <Widget>
          [
            new Expanded
            (
              child: new PageView.builder
              (
                scrollDirection: Axis.horizontal,
                itemCount: plantsList.length,
                itemBuilder: (_, int pos) => new PlantPreview(plantsList[pos]),
              ),
            ),
            new Container
            (
              margin: new EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: new Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>
                [
                  new Flexible
                  (
                    flex: 1,
                    child: new GestureDetector
                    (
                      onTap: () {},
                      child: new Padding
                      (
                        padding: new EdgeInsets.symmetric(vertical: 16.0),
                        child: new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.favorite_border, color: Colors.green),
                            new Padding(padding: new EdgeInsets.only(right: 8.0)),
                            new Text('426', style: new TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Flexible
                  (
                    flex: 1,
                    child: new GestureDetector
                    (
                      onTap: () {},
                      child: new Padding
                      (
                        padding: new EdgeInsets.symmetric(vertical: 16.0),
                        child: new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>
                          [
                            new Text('Share', style: new TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w700)),
                            new Padding(padding: new EdgeInsets.only(right: 8.0)),
                            new Icon(Icons.share, color: Colors.green),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: new MaterialButton
        (
          onPressed: () {},
          color: Colors.green,
          child: new Padding
          (
            padding: const EdgeInsets.all(24.0),
            child: new Text('Buy Now', style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}