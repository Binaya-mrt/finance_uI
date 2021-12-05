// import 'dart:ui' as ui;

import 'package:flutter/material.dart';
//import profile.dart
import 'package:calendar/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calendar(),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    var WIDTH = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            CustomPaint(
              size: Size(
                  WIDTH,
                  (WIDTH * 1.778588807785888)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RichText(
                text: const TextSpan(
                  text: 'Finance Your\n',
                  style: TextStyle(fontSize: 25),
                  children: [
                    TextSpan(
                      text: 'Balance',
                      style: TextStyle(
                          shadows: [
                            Shadow(color: Colors.red, offset: Offset(0, -3))
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          // height: 3.0,
                          textBaseline: TextBaseline.alphabetic,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: Colors.red,
                          decorationThickness: 3.0),
                    ),
                    TextSpan(
                      text: ' Sheet\n\n',
                      style: TextStyle(fontSize: 25),
                    ),
                    TextSpan(
                      text: 'Best payement method,connect your\nmoney to your',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextSpan(
                      text: ' Family and Friends',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: WIDTH * 0.9,
                left: WIDTH * 0.8,
                child: CircleAvatar(
                  backgroundColor: const Color(0xff2a2f3e),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: const Icon(Icons.arrow_forward)),
                )),
            Positioned(
              bottom: WIDTH * 0.1,
              left: WIDTH * 0.1,
              child: Image.asset(
                'images/srii.png',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.7,
                width: WIDTH * 0.7,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.06786764, size.height * 0.5436990);
    path_2.cubicTo(
        size.width * 0.02835985,
        size.height * 0.5170698,
        size.width * 0.007783066,
        size.height * 0.5695896,
        size.width * 0.002433090,
        size.height * 0.5991792);
    path_2.lineTo(size.width * 0.002433090, size.height * 0.3932107);
    path_2.lineTo(size.width * 0.002433090, 0);
    path_2.lineTo(size.width, 0);
    path_2.lineTo(size.width, size.height * 0.1837756);
    path_2.cubicTo(
        size.width * 0.8629586,
        size.height * 0.1255224,
        size.width * 0.8111046,
        size.height * 0.2177579,
        size.width * 0.8036959,
        size.height * 0.2593666);
    path_2.cubicTo(
        size.width * 0.8017202,
        size.height * 0.3475800,
        size.width * 0.6588345,
        size.height * 0.3659343,
        size.width * 0.5876399,
        size.height * 0.3640848);
    path_2.cubicTo(
        size.width * 0.5797372,
        size.height * 0.4717141,
        size.width * 0.4189100,
        size.height * 0.4713447,
        size.width * 0.3394818,
        size.height * 0.4577059);
    path_2.cubicTo(
        size.width * 0.2814550,
        size.height * 0.5769877,
        size.width * 0.1172521,
        size.height * 0.5769877,
        size.width * 0.06786764,
        size.height * 0.5436990);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff222838).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.06786764, size.height * 0.5436990);
    path_3.cubicTo(
        size.width * 0.02835985,
        size.height * 0.5170698,
        size.width * 0.007783066,
        size.height * 0.5695896,
        size.width * 0.002433090,
        size.height * 0.5991792);
    path_3.lineTo(size.width * 0.002433090, size.height * 0.3932107);
    path_3.lineTo(size.width * 0.002433090, 0);
    path_3.lineTo(size.width, 0);
    path_3.lineTo(size.width, size.height * 0.1837756);
    path_3.cubicTo(
        size.width * 0.8629586,
        size.height * 0.1255224,
        size.width * 0.8111046,
        size.height * 0.2177579,
        size.width * 0.8036959,
        size.height * 0.2593666);
    path_3.cubicTo(
        size.width * 0.8017202,
        size.height * 0.3475800,
        size.width * 0.6588345,
        size.height * 0.3659343,
        size.width * 0.5876399,
        size.height * 0.3640848);
    path_3.cubicTo(
        size.width * 0.5797372,
        size.height * 0.4717141,
        size.width * 0.4189100,
        size.height * 0.4713447,
        size.width * 0.3394818,
        size.height * 0.4577059);
    path_3.cubicTo(
        size.width * 0.2814550,
        size.height * 0.5769877,
        size.width * 0.1172521,
        size.height * 0.5769877,
        size.width * 0.06786764,
        size.height * 0.5436990);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Colors.black.withOpacity(0.2);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.06786764, size.height * 0.5436990);
    path_4.cubicTo(
        size.width * 0.02835985,
        size.height * 0.5170698,
        size.width * 0.007783066,
        size.height * 0.5695896,
        size.width * 0.002433090,
        size.height * 0.5991792);
    path_4.lineTo(size.width * 0.002433090, size.height * 0.3932107);
    path_4.lineTo(size.width * 0.002433090, 0);
    path_4.lineTo(size.width, 0);
    path_4.lineTo(size.width, size.height * 0.1837756);
    path_4.cubicTo(
        size.width * 0.8629586,
        size.height * 0.1255224,
        size.width * 0.8111046,
        size.height * 0.2177579,
        size.width * 0.8036959,
        size.height * 0.2593666);
    path_4.cubicTo(
        size.width * 0.8017202,
        size.height * 0.3475800,
        size.width * 0.6588345,
        size.height * 0.3659343,
        size.width * 0.5876399,
        size.height * 0.3640848);
    path_4.cubicTo(
        size.width * 0.5797372,
        size.height * 0.4717141,
        size.width * 0.4189100,
        size.height * 0.4713447,
        size.width * 0.3394818,
        size.height * 0.4577059);
    path_4.cubicTo(
        size.width * 0.2814550,
        size.height * 0.5769877,
        size.width * 0.1172521,
        size.height * 0.5769877,
        size.width * 0.06786764,
        size.height * 0.5436990);
    path_4.close();

    Paint paint_4_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_4_stroke.color = Color(0xff3D2C2C).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_stroke);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// Best payement method,connect your money to your friends and brands.
