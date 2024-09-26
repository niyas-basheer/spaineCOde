// boarding_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spine/contoller/boarding_controller/boarding_controller.dart';


class BoardingPage extends StatelessWidget {
  final BoardingController controller = Get.put(BoardingController());

   BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/boarding.png'), 
                
              ),
            ),
          ),
          // Content Overlay
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Heading Text
                const Text(
                  'БЕГ',  // Heading text
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 480) ,
                // Description Text
                const Column(
                  children: [
                    Text(
                      'Беги в Кирове' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                     Text(
                  'Бегай и зарабатывай в нашем приложении' ,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                  ],
                ),
                const SizedBox(height: 35),
                // Next Button
                ElevatedButton(
                  onPressed: () {
                    controller.navigateToNextPage();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 150 , vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.indigo[600]
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
