import 'package:flutter/material.dart';

class CustomPaintContainerHomeScreen extends StatelessWidget {
  const CustomPaintContainerHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyWavePaintWidget(),
      child: Container(
        height: 350,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 200,
              width: 200,
            ),
            Text(
              "Quizzles",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xff34eabc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWavePaintWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(70, size.height, 130, size.height - 40);
    path.quadraticBezierTo(190, size.height - 40, 250, size.height);
    path.quadraticBezierTo(310, size.height, 370, size.height - 40);
    path.quadraticBezierTo(430, size.height - 40, 490, size.height);
    path.quadraticBezierTo(520, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);

    return path;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
