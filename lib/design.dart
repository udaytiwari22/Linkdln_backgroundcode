import 'package:flutter/material.dart';

class LinkedInBackground extends StatelessWidget {

  const LinkedInBackground({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background Color or Gradient
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              // Flutter and Dart Logos
              Positioned(
                top: 50,
                left: 20,
                child: Image.asset('assets/flutter_logo.png', width: 80),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: Image.asset('assets/dart_logo.png', width: 80),
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
    );
  }
}
