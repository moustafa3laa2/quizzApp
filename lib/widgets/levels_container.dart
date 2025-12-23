import 'package:flutter/material.dart';

class LevelsContainer extends StatelessWidget {
  const LevelsContainer({super.key, required this.level, this.isLocked = true, required this.color});
  final int level;
  final bool isLocked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 50,
          right: 10,
          child: Icon(
            Icons.star,
            size: 40,
            color: isLocked ? Colors.grey : Colors.amber,
          ),
        ),
        Positioned(
          top: 20,
          right: 75,
          child: Icon(
            Icons.star,
            size: 40,
            color: isLocked ? Colors.grey : Colors.amber,
          ),
        ),
        Positioned(
          top: 50,
          right: 130,
          child: Icon(
            Icons.star,
            size: 40,
            color: isLocked ? Colors.grey : Colors.amber,
          ),
        ),
        Positioned(top: 100, left: 40, child: CircleAvatar(radius: 25)),
        Positioned(
          bottom: 40,
          left: 95,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white.withValues(alpha: 0.5),
          ),
        ),
        Positioned(
          bottom: 30,
          child: ClipPath(
            clipper: CustomContainerLevels(),
            child: Container(
              decoration: BoxDecoration(
                color: isLocked?Colors.grey:color,
                // gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: isLocked
                //       ? [Colors.grey, Colors.grey.withValues(alpha: .5)]
                //       : [
                //           color1,
                //           color2.withValues(alpha: .1),
                //         ],
                // ),
              ),
              height: 150,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Level",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "0$level",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        if (isLocked)
          Positioned(
            top: 110,
            child: const Icon(Icons.lock, color: Colors.amber, size: 50),
          ),
      ],
    );
  }
}

class CustomContainerLevels extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(0, size.height * 0.4);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
