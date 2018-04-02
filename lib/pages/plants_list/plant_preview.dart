import 'package:flutter/material.dart';
import '../../classes/plant.dart';

class PlantPreview extends StatelessWidget
{
  final Plant plant;
  PlantPreview(this.plant);

  @override
  Widget build(BuildContext context)
  {
    return new Padding
    (
      padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0, bottom: 0.0),
      child: new Material
      (
        borderRadius: new BorderRadius.circular(14.0),
        color: Colors.black12,
        child: new Stack
        (
          children: <Widget>
          [
            new Align
            (
              alignment: Alignment.center,
              child: new Image.asset('res/${plant.plantImg}')
            ),
            new Align
            (
              alignment: Alignment.bottomLeft,
              child: new Material
              (
                borderRadius: new BorderRadius.only(topRight: new Radius.circular(14.0)),
                color: Colors.black,
                child: new Container
                (
                  margin: new EdgeInsets.all(12.0),
                  child: new Text(plant.plantName, style: new TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w700)),
                ),
              )
            ),
            new Align
            (
              alignment: Alignment.topRight,
              child: new Material
              (
                borderRadius: new BorderRadius.only(bottomLeft: new Radius.circular(14.0)),
                color: Colors.green,
                child: new Container
                (
                  margin: new EdgeInsets.all(12.0),
                  child: new Text
                  (
                    plant.price - plant.price.truncate() > 0
                     ? '\$${plant.price.toStringAsFixed(2)}'
                     : '\$${plant.price.truncate()}',
                    style: new TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500)
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}