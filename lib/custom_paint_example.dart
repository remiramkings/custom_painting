import 'package:flutter/material.dart';

class CustomPaintsExample extends StatefulWidget {
  const CustomPaintsExample({super.key});

  @override
  State<CustomPaintsExample> createState() => CustomPaintsExampleState();
}

class CustomPaintsExampleState extends State<CustomPaintsExample> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// ClipRect
      
            /// ClipPath
             Stack(
               children: [
                ClipPath(
                  clipper: BezierClipper2(),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Container(color: Color.fromARGB(152, 247, 99, 89), height: 200,)),
            ),
                 ClipPath(
                  clipper: BezierClipper1(),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Container(color: Color.fromARGB(255, 148, 58, 52), height: 200,)),
            ),
            ClipPath(
                  clipper: BezierClipper3(),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Container(color: const Color.fromARGB(255, 255, 68, 55), height: 200,)),
            ),


               ],
             ),
            /// 
            const SizedBox(height: 50),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}

class BezierClipper3 extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    final path = Path();
   
  
    path.lineTo(0, size.height * 0.71);
  
    path.quadraticBezierTo(0, size.height * 0.71, size.width * 0.05, size.height * 0.61);
    path.quadraticBezierTo(size.width * 0.11, size.height * 0.56, size.width * 0.21, size.height * 0.64);
    path.quadraticBezierTo(size.width * 0.31, size.height * 0.81, size.width * 0.42, size.height * 0.67);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.54, size.width * 0.64, size.height * 0.64);
   
    //path.quadraticBezierTo(size.width * 0.71, size.height * 0.73, size.width * 0.71, size.height * 0.73 );
    
   // path.quadraticBezierTo(size.width * 0.85, size.height * 0.69,size.width, size.height * 0.5);
   path.quadraticBezierTo(size.width * 0.748, size.height * 0.736, size.width * 0.868, size.height * 0.670);
   
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.55, size.width, size.height * 0.5 );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BezierClipper3 oldClipper) => true;
}


class BezierClipper1 extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    final path = Path();
   
  
    path.lineTo(0, size.height * 0.36);
    path.quadraticBezierTo(0, size.height * 0.36, size.width * 0.07, size.height * 0.53);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.79, size.width * 0.16, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.23, size.height * 0.39, size.width * 0.37, size.height * 0.71);
    path.quadraticBezierTo(size.width * 0.46, size.height * 0.88 , size.width * 0.50, size.height * 0.70);
   
    path.quadraticBezierTo(size.width * 0.57, size.height * 0.53, size.width * 0.73, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.83, size.height * 0.86, size.width * 0.92, size.height * 0.66);

    path.quadraticBezierTo(size.width * 0.92, size.height * 0.66, size.width, size.height * 0.52);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BezierClipper1 oldClipper) => true;
}

class BezierClipper2 extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    final path = Path();
   
  
    path.lineTo(0, size.height * 0.42);
  
    path.quadraticBezierTo(0, size.height * 0.42, size.width * 0.11, size.height * 0.77);
    path.quadraticBezierTo(size.width * 0.20, size.height, size.width * 0.30, size.height * 0.69);
    path.quadraticBezierTo(size.width * 0.39, size.height * 0.47, size.width * 0.51, size.height * 0.68);
    path.quadraticBezierTo(size.width * 0.58, size.height * 0.74, size.width * 0.64, size.height * 0.64);
   
    path.quadraticBezierTo(size.width * 0.81, size.height * 0.40, size.width, size.height * 0.52);
    
    
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BezierClipper2 oldClipper) => true;
}
