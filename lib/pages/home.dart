import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 206, 206),

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

        Align ( 
          alignment: const Alignment(-0.01,0.5),
          child: OutlinedButton(
            onPressed: () {
          },
          style: OutlinedButton.styleFrom( 
            side: const BorderSide(color: Colors.black, width: 2),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text( 
            'Connect Device',
            style : TextStyle ( 
              color: Colors.black, 
              fontSize: 24,
             )
            ),
          ),
        ),
        
        
            Positioned(
              left: 70,
              bottom: 20,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 170,
              children: [
                Column (
                 mainAxisSize: MainAxisSize.min,
                children : [
                Icon(Icons.house, color: Colors.black, size:40,),
                SizedBox(height: 5),
                Text('Home', style: TextStyle(color:Colors.black, fontSize:10,)),
                ]
              ),
              Column ( 
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Icon(Icons.settings, color: Colors.black, size: 40,),
                  SizedBox(height: 5),
                  Text( 'Settings', style: TextStyle(color:Colors.black, fontSize:10,)),
                ],
              )
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}