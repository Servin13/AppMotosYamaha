import 'package:motos_yamaha/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/logoYamaha.png',
              height: 300,),
            ),
            const SizedBox(height: 50,),

            GestureDetector(
              onTap: () => Navigator.push(context, 
              MaterialPageRoute(
                builder: (context) => HomePageCha(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(30),
                child: const Center(
                  child: const Text(
                    'Ver motos', 
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}
