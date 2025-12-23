import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/levels_container.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1047),
      appBar: AppBar(
        backgroundColor: Color(0xff1f1047),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundColor: Color(0xff2e1b82),
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        title: Text(
          "Levels",
          style: TextStyle(
            fontSize: 30,
            color: Color(0xff34eabc),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          childAspectRatio: 0.76,
        ),

        itemCount: 6,

        itemBuilder: (BuildContext context, int index) {
          return LevelsContainer(level: index+1,isLocked: index==5,);
        },
      )
    );
  }
}

