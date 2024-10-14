import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart'; 

class LinkedInBackground extends StatelessWidget {
  LinkedInBackground({super.key});

  final ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Screenshot(
            controller: screenshotController,
            child: const Stack(
              alignment: Alignment.center,
              children: [
                // Your design code here...
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            screenshotController.capture().then((image) {
              // Save the image or share it to LinkedIn
            }).catchError((onError) {
              print(onError);
            });
          },
          child: const Icon(Icons.camera),
        ),
      ),
    );
  }
}
