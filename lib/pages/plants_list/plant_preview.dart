import 'package:flutter/material.dart';

class PlantPreview extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Padding
    (
      padding: const EdgeInsets.all(24.0),
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
              child: new Image.asset('res/plant1.png')
            ),
            new Align
            (
              alignment: Alignment.bottomLeft,
              child: new Material
              (
                borderRadius: new BorderRadius.only(topRight: new Radius.circular(12.0)),
                color: Colors.black,
                child: new Container
                (
                  margin: new EdgeInsets.all(12.0),
                  child: new Text('New Day Hope', style: new TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w700)),
                ),
              )
            ),
            new Align
            (
              alignment: Alignment.topRight,
              child: new Material
              (
                borderRadius: new BorderRadius.only(bottomLeft: new Radius.circular(12.0)),
                color: Colors.green,
                child: new Container
                (
                  margin: new EdgeInsets.all(12.0),
                  child: new Text(r'$45', style: new TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500)),
                ),
              )
            ),
            // new Align
            // (
            //   alignment: Alignment.topRight,
            //   child: new Image.asset('res/flower1.jpg')
            // ),
          ],
        ),
      ),
    );
  }
}