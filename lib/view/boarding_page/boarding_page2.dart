import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardingPage2 extends StatelessWidget {
  const BoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2436), 
      appBar: AppBar(title: const Padding(
        
        padding: EdgeInsets.only(left: 180.0),
        child: Text('Пропустить',style:TextStyle(color: Colors.white),),
      ),backgroundColor: const Color(0xFF1D2436), iconTheme: const IconThemeData(
            color: Colors.white,  // Set the color of the back button (and other icons)
          ),),
      body: Column(
        children: [
           const SizedBox(height: 50, ),
          // Top Section with Image
          Center(
            child: Image.asset(
              'assets/boarding2.png',  
              width: 300 ,
              fit: BoxFit.cover,
            ),
          ),
          
          // Horizontal GridView Section (Box with Text and Button)
          Container(
            height: 350, // Adjust height based on your design
            margin: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,  // If there are more boxes, change itemCount
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 320 ,  // Width for each box
                    decoration: BoxDecoration(
                      color: const Color(0xFF292F41),  // Box color
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Column(
                     
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50,),
                        const Text(
                          'Бег',  // Running in Russian
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         const SizedBox(height: 10),
                        const Icon(Icons.remove, color: Colors.pinkAccent),
                         const SizedBox(height: 50,),
                        ElevatedButton(
                          onPressed: () {
                           Get.toNamed('/LoginPage');  
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6463F5), 
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Далее',  
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

         
          const SizedBox(height: 20),  
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Уже есть аккаунт?',
                  style: TextStyle(color: Colors.white70),
                ),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    'Авторизоваться',  
                    style: TextStyle(color: Color(0xFF6463F5)),
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
