import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xff645AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: Color(0xff645AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70.0),
          bottomRight: Radius.circular(70.0),
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff645AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;

    final path = Path();
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff645AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;

    final path = Path();
    //Parte superior del triangulo
    /*
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);*/

    //Parte inferior del triangulo
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    //path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderPico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff645AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff645AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 30.0;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.4, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderWave extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff645AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10.0;

    final path = Path();

    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * 0.3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, 
      width: double.infinity, 
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = Rect.fromCircle(
      center: Offset(150.0, 200.0), 
      radius: 250.0
    );

    final Gradient gradiente = LinearGradient(
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ]
    );
    final paint = Paint()..shader = gradiente.createShader(rect);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10.0;

    final path = Path();

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.75, size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.85, size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}