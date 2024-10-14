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
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background Gradient
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.lightBlue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                // Flutter Logo
                Positioned(
                  top: 50,
                  left: 20,
                  child: Image.asset(
                    'assets/dart_logo.png',  // Path to Flutter logo
                    width: 80,
                  ),
                ),
                // Dart Logo
                Positioned(
                  top: 50,
                  right: 20,
                  child: Image.asset(
                    'assets/dart_logo.png',  // Path to Dart logo
                    width: 80,
                  ),
                ),
                // Name and Title
                const Positioned(
                  top: 150,
                  child: Column(
                    children: [
                      Text(
                        'Your Name',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Flutter Developer | Mobile App Engineer',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                // Tagline
                const Positioned(
                  bottom: 100,
                  child: Text(
                    'Building beautiful cross-platform apps with Flutter',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            screenshotController.capture().then((image) {
              // Save the image or share it
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
