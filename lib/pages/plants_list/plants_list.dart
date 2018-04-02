import 'package:flutter/material.dart';
import 'plant_preview.dart';

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
              child: new PageView
              (
                scrollDirection: Axis.horizontal,
                children: <Widget>
                [
                  new PlantPreview(),
                  new PlantPreview(),
                  new PlantPreview(),
                  new PlantPreview(),
                  new PlantPreview(),
                ],
              ),
            ),
            new Container
            (
              margin: new EdgeInsets.only(bottom: 24.0, left: 16.0, right: 16.0),
              child: new Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>
                [
                  new FlatButton
                  (
                    onPressed: () {},
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
                  new FlatButton
                  (
                    onPressed: () {},
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