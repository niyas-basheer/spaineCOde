import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2A38), 
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A38),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              
              Image.asset('assets/Logo.png', width: 150, height: 150), 
             
              const SizedBox(height: 20),
              const Text(
                'Авторизация',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
        
             
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF2A3A48),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
        
              
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  labelStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF2A3A48),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye, color: Colors.white),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
        
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (bool? newValue) {
                          setState(() {
                            rememberMe = newValue ?? false;
                          });
                        },
                        checkColor: Colors.white,
                        activeColor:  Colors.indigo[500],
                      ),
                      const Text(
                        'Запомнить меня',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.indigo[500]), 
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
        
              
              ElevatedButton(
                onPressed: () {
                 Get.toNamed('/bottomNavigation');  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.indigo[500],
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Войти',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
        
              
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Или продолжить с',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
        
             
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   
    Container(
      height: 90 ,width: 105,
      decoration: BoxDecoration(
        color: Color(0xFF1E2A38), 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), 
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          // Twitter Login
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: CircleBorder(), 
          padding: EdgeInsets.all(16), 
          backgroundColor: Color(0xFF1E2A38), 
        ),
        child: Image.asset(
          'assets/google.png', 
          width: 32,
          height: 32,
        ),
      ),
    ),
    SizedBox(width: 20),

   
    Container(
      height: 90 ,width: 105,
      decoration: BoxDecoration(
        color: Color(0xFF1E2A38), 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          elevation: 0, 
          shape: CircleBorder(), 
          padding: EdgeInsets.all(16), 
          backgroundColor: Color(0xFF1E2A38), 
        ),
        child: Image.asset(
          'assets/facebook.png', 
          width: 32,
          height: 32,
        ),
      ),
    ),
    SizedBox(width: 20),

    
    Container(
      height: 90 ,width: 105,
      decoration: BoxDecoration(
        color: Color(0xFF1E2A38), 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), 
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(16), 
          backgroundColor: Color(0xFF1E2A38), 
        ),
        child: Image.asset(
          'assets/twetter.png', 
          width: 32,
          height: 32,
        ),
      ),
    ),
  ],
),

              const SizedBox(height: 30),
               const Text('Новый пользователь?',style: TextStyle(color: Colors.white),),
              
              TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


