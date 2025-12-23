import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_paint_container_home_screen.dart';
import 'levels_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1e1147),
        body: Column(
          children: [
            CustomPaintContainerHomeScreen(),
            SizedBox(height: 20),
            Text(
              "Let's Play!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Play Now and Level Up",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelsScreen()),
                  );
                },
                title: "Play Now",
                color: Color(0xff6648fe),
                colorTitle: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(onPressed: (){
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Alert!'),
                      content: const Text('this is alert dialooooog'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Ok'),
                          onPressed: () {

                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
                borderColor: Color(0xff6644fe),
                title: "About",
                color: Color(0xff1e1147),
                colorTitle: Color(0xff6644fe),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
