import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Stack(
          children: [
          Align (
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
          'Smart Heated Garment',
          style: TextStyle ( 
            color: Colors.black,
            fontSize: 24, 
                ),
              ),
            ),
          ),

            Positioned(
              left: 20,
              bottom: 20,
              child: Column (
                mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                Icons.house, 
                color: Colors.black,
                size: 40,
              ),
              SizedBox(height: 5),
                Text (
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    ),
                  ),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}