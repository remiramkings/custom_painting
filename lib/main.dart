import 'package:flutter/material.dart';
import 'package:login_page/custom_paint_example.dart';

void main() {
  runApp(MyApp());
}

/// App Widget
class MyApp extends StatefulWidget {
  /// Initialize app
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// Home
      home: CustomPaintsExample(),
    );
  }
}

class ClipperExamples extends StatefulWidget {
  @override
  _ClipperExamplesState createState() => _ClipperExamplesState();
}

class _ClipperExamplesState extends State<ClipperExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// ClipRect

            /// ClipPath

            ClipPath(
              clipper: TriClipper(),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                      alignment: Alignment(-0.5, -0.2),
                      widthFactor: 0.6,
                      heightFactor: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 0.7
                          : 0.3,
                      child:
                          Image.network("https://picsum.photos/800?image=11"))),
            ),
            const SizedBox(height: 50),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),

            const Text('Login to Your Account',
                style: TextStyle(
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}

class TriClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // path.moveTo(size.width / 2, 0.0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0.0, size.height);
    // path.close();
    // path.lineTo(0, size.height - size.height / 5);
    // //Use the method conicTo
    // path.conicTo(size.width / 1.2, size.height, size.width,
    //     size.height - size.height / 5, 15);
    // path.lineTo(size.width, 0);
    // path.close();
    // return path;
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height - 50); // Adjust the curve height
    // path.quadraticBezierTo(0, size.height - 100, 0, size.height - 50);
    // path.close();
    //return path;
    path.lineTo(0, size.height - size.height / 5);
    path.conicTo(size.width / 3, size.height, size.width, size.height - 70, 7);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriClipper oldClipper) => false;
}
