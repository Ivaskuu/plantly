import 'package:flutter/material.dart';

import 'zoomable_image_page.dart';

class FullscreenImagePage extends StatelessWidget {
  final String imgPath;
  FullscreenImagePage(this.imgPath);

  final LinearGradient backgroundGradient = LinearGradient(colors: [
    Color(0x10000000), // Light black
    Color(0x30000000), // Dark black
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
            decoration: BoxDecoration(gradient: backgroundGradient),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: imgPath,
                    child: Image.asset(imgPath),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    // I need to add a column to set the MainAxisSize to min,
                    // otherwise the appbar takes all the screen height and the image is no more clickable
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leading: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.close, color: Colors.black),
                        ),
                        actions: <Widget>[
                          IconButton(
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) =>
                                        ZoomableImagePage(imgPath))),
                            icon: Icon(Icons.zoom_in, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
