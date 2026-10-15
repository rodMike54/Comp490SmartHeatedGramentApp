import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          Align( 
            alignment: const Alignment(1,-0.2), 
          child: SvgPicture.asset( 
              'assets/sweater.svg',
              width: 370,
            ),
          ),

            Positioned(
              left: 70,
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