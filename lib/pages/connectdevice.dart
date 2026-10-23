import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConnectDevice extends StatefulWidget {
  const ConnectDevice({super.key});

  @override
  State<ConnectDevice> createState() => _ConnectDeviceState();
}

class _ConnectDeviceState extends State<ConnectDevice> {
  double heatLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 206, 206),
      body: SafeArea(
        child: Stack(
          children: [
            // Title
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Smart Heated Garment',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 24),
                ),
              ),
            ), // <- this closes the title Align (it was missing)

            // Sweater
            Align(
              alignment: const Alignment(1, -0.2),
              child: SvgPicture.asset(
                'assets/sweater.svg',
                width: 370,
              ),
            ),

            // Temperature label + slider (one Align, one Column, two children)
            Align(
              alignment: const Alignment(-0.1, 0.4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Temperature',
                    style: TextStyle(color: Colors.black, 
                    fontSize: 20),
                  ),
                  SizedBox(
                    width: 300,
                    child: Slider(
                      value: heatLevel,
                      min: 0,
                      max: 100,
                      onChanged: (newValue) {
                        setState(() => heatLevel = newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align ( 
              alignment: const Alignment(-0.7,0.3),
              child: Row ( 
                mainAxisSize: MainAxisSize.min,
                children: [
            Icon ( 
              Icons.ac_unit,
              color: Colors.blue,
              size: 20,
                  ),
                ],
              ),
            ),

            Align (
              alignment: const Alignment(0.6,0.3),
              child: Row (
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon (
                    Icons.local_fire_department,
                    color: Color(0xFFFF5349),
                    size: 20,
                  ),
                ],
              ),
            ),

            // Bottom buttons
            Positioned (
              left: 0,
              right: 0,
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 100,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.house, 
                        color: Colors.black, 
                        size: 40),
                        SizedBox(height: 5),
                        Text('Home',
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 10)
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.settings, 
                          color: Colors.black, 
                          size: 40
                          ),
                        SizedBox(height: 5),
                        Text('Settings',
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 10)
                        ),
                      ],
                    ),
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