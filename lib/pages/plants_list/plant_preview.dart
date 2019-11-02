import 'package:flutter/material.dart';

import '../../classes/plant.dart';
import '../fullscreen_image_page.dart';

class PlantPreview extends StatelessWidget {
  final Plant plant;
  PlantPreview(this.plant);

  final LinearGradient backgroundGradient = LinearGradient(colors: [
    Color(0x10000000), // Light black
    Color(0x30000000), // Dark black
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 24.0, left: 24.0, right: 24.0, bottom: 0.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => FullscreenImagePage('res/' + plant.plantImg))),
        child: Material(
          borderRadius: BorderRadius.circular(14.0),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: Stack(
            children: <Widget>[
              SizedBox.expand(
                child: Container(
                  decoration: BoxDecoration(gradient: backgroundGradient),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Hero(
                      tag: 'res/' + plant.plantImg,
                      child: Image.asset('res/${plant.plantImg}'))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Material(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(14.0)),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.black,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                      child: Text(plant.plantName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700)),
                    ),
                  )),
              Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(14.0)),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.green,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Text(
                          plant.price - plant.price.truncate() > 0
                              ? '\$${plant.price.toStringAsFixed(2)}'
                              : '\$${plant.price.truncate()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
