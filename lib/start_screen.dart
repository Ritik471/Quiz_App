import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/trophy.png',
            width: 250,
          ),
          const SizedBox(
            height: 90,
          ),
          Text(
            'Lets check your General Knowledge!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 25,fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
             backgroundColor: const Color.fromARGB(255, 255, 255, 255)
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              ' Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
