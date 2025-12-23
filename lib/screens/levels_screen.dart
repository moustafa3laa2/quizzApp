import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/levels_container.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  List<Color>colors=[
    Color(0xff8d6dfd).withValues(alpha: .8),
    Color(0xff1b93fe).withValues(alpha: .8),
    Color(0xfff48837).withValues(alpha: .8),
    Color(0xff2cd3b0).withValues(alpha: .8),
    Color(0xfffc35a9).withValues(alpha: .8),
    Color(0xfffc35a9).withValues(alpha: .8),

  ];
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
          return LevelsContainer(level: index+1,isLocked: index==5,color: colors[index],);
        },
      )
    );
  }
}

