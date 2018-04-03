import 'package:flutter/material.dart';
import '../../classes/plant.dart';

class CartItem extends StatelessWidget
{
  final Plant plant;
  CartItem(this.plant);

  @override
  Widget build(BuildContext context)
  {
    return new Container
    (
      margin: new EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: new Material
      (
        elevation: 30.0,
        shadowColor: Colors.black54,
        color: Colors.white,
        borderRadius: new BorderRadius.circular(6.0),
        child: new Padding
        (
          padding: new EdgeInsets.symmetric(vertical: 6.0),
          child: new ListTile
          (
            leading: new Image.asset('res/${plant.plantImg}'),
            title: new Text(plant.plantName, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20.0)),
            subtitle: new Material
            (
              color: Colors.green,
              borderRadius: new BorderRadius.circular(8.0),
              child: new Container
              (
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                child: new Text
                (
                  plant.price - plant.price.truncate() > 0
                    ? '\$${plant.price.toStringAsFixed(2)}'
                    : '\$${plant.price.truncate()}',
                  style: new TextStyle(color: Colors.white)),
              ),
            ),
            trailing: new IconButton
            (
              onPressed: () {},
              icon: new Icon(Icons.delete, color: Colors.black26),
            ),
          ),
        ),
      ),
    );
  }
}