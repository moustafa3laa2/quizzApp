import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset("assets/images/logo.png", width: 250, height: 250),
            SizedBox(height: 80,),
            Text(
              "Quizzles",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xff34eabc),
              ),
            ),
            SizedBox(height: 50,),

            Text(
              "Let's Play!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10,),

            Text(
              "Play Now and Level Up",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 60,),

           CustomButton(title: "Play Now", color: Color(0xff6648fe),colorTitle: Colors.white,),
           SizedBox(height: 10,),
           CustomButton(title: "About", color: Color(0xff1e1147),colorTitle: Color(0xff6644fe),),
          ],
        ),
      ),
    );
  }
}
