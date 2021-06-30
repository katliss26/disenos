import 'dart:math' as Math;

import 'package:flutter/material.dart';


class AnimacionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
     ),
   );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> rotacion;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration( milliseconds: 4000 ));
    //rotacion = Tween( begin: 0.0, end: 2.0 * Math.pi ).animate(controller);
    rotacion = Tween( begin: 0.0, end: 2.0 * Math.pi ).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );
    controller.addListener(() { 
      /*if(controller.status == AnimationStatus.completed) {
        controller.reverse();
      } 
      /*else if(controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }*/*/
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    controller.forward();
    //controller.repeat();
    return AnimatedBuilder(
      animation: controller,
      //child: _Rectangulo(),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: rotacion.value,
          child: _Rectangulo()
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}