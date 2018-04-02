import 'package:flutter/material.dart';
import 'zoomable_image_page.dart';

class FullscreenImagePage extends StatelessWidget
{
  final String imgPath;
  FullscreenImagePage(this.imgPath);

  final LinearGradient backgroundGradient = new LinearGradient
  (
    colors:
    [
      new Color(0x10000000), // Light black
      new Color(0x30000000), // Dark black
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight
  );

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new SizedBox.expand
      (
        child: new Container
        (
          decoration: new BoxDecoration
          (
            gradient: backgroundGradient
          ),
          child: new Stack
          (
            children: <Widget>
            [
              new Align
              (
                alignment: Alignment.center,
                child: new Hero
                (
                  tag: imgPath,
                  child: new Image.asset(imgPath),
                ),
              ),
              new Align
              (
                alignment: Alignment.topCenter,
                child: new Column
                (
                  // I need to add a column to set the MainAxisSize to min,
                  // otherwise the appbar takes all the screen height and the image is no more clickable
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>
                  [
                    new AppBar
                    (
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading: new IconButton
                      (
                        onPressed: () => Navigator.of(context).pop(),
                        icon: new Icon(Icons.close, color: Colors.black),
                      ),
                      actions: <Widget>
                      [
                        new IconButton
                        (
                          onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ZoomableImagePage(imgPath))),
                          icon: new Icon(Icons.zoom_in, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}