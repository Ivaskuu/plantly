import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

class ImageZoomable extends StatelessWidget
{
  final String imgPath;
  ImageZoomable(this.imgPath);

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      backgroundColor: Colors.transparent,
      body: new SizedBox.expand
      (
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
                child: new ZoomableImage(new AssetImage(imgPath), scale: 5.0),
              ),
            ),
            new Align
            (
              alignment: Alignment.topCenter,
              child: new Column
              (
                // I need to add a column to set the MainAxisSize to min,
                // otherwise the appbar takes all the screen and the image is no more clickable
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>
                [
                  new AppBar
                  (
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    actions: <Widget>
                    [
                      new IconButton
                      (
                        onPressed: () => Navigator.of(context).pop(),
                        icon: new Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}