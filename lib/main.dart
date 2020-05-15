import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Puzzle"),
        ),
        body: HomePage(),
       // backgroundColor: Colors.pink[50],
        
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  
  Offset c1 = Offset(150, 150);
  Offset c2 = Offset(75, 75);
  Offset c3 = Offset(225, 150);
  Offset c4 = Offset(150, 225);

  Offset c5 = Offset(150, 0);
  Offset c6 = Offset(0, 75);
  Offset c7 = Offset(75, 150);
  Offset c8 = Offset(225,0);

  Offset c9 = Offset(75, 0);
  Offset c10 = Offset(225, 75);
  Offset c11 = Offset(0, 0);
  Offset c12 = Offset(0, 225);

  Offset c13 = Offset(75, 225);
  Offset c14 = Offset(150,75);
 Offset c15 = Offset(0, 150);

  Offset empty = Offset(225, 225);
  Offset temp;

  bool pos(top, left) {
    double x = top + 75;
    double y = left + 75;
    double x1 = top - 75;
    double y1 = left - 75;

    if (((x == empty.dx) && (left == empty.dy)) ||
        ((top == empty.dx) && (y == empty.dy))) {
      return true;
    } else if ((x1 == empty.dx && left == empty.dy) ||
        (top == empty.dx && y1 == empty.dy)) {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
         
          Center(
        child: Container(
          
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            color: Colors.blue[100]
          ),
          child: Stack(children: [
            Positioned(
              top: c1.dx,
              left: c1.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/1.png'))
                  ),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c1.dx;
                    double left = c1.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c1;
                      c1 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c2.dx,
              left: c2.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/2.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c2.dx;
                    double left = c2.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c2;
                      c2 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c3.dx,
              left: c3.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/3.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c3.dx;
                    double left = c3.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c3;
                      c3 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c4.dx,
              left: c4.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  image: DecorationImage(image: AssetImage('assets/4.png')),
                ),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c4.dx;
                    double left = c4.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c4;
                      c4 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c5.dx,
              left: c5.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/5.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c5.dx;
                    double left = c5.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c5;
                      c5 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c6.dx,
              left: c6.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/6.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c6.dx;
                    double left = c6.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c6;
                      c6 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c7.dx,
              left: c7.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/7.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c7.dx;
                    double left = c7.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c7;
                      c7 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c8.dx,
              left: c8.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/8.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c8.dx;
                    double left = c8.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c8;
                      c8 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c9.dx,
              left: c9.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/9.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c9.dx;
                    double left = c9.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c9;
                      c9 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c10.dx,
              left: c10.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/10.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c10.dx;
                    double left = c10.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c10;
                      c10 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c11.dx,
              left: c11.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/11.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c11.dx;
                    double left = c11.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c11;
                      c11 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c12.dx,
              left: c12.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/12.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c12.dx;
                    double left = c12.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c12;
                      c12 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c13.dx,
              left: c13.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/13.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c13.dx;
                    double left = c13.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c13;
                      c13 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c14.dx,
              left: c14.dy,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/14.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c14.dx;
                    double left = c14.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c14;
                      c14 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
            Positioned(
              top: c15.dx,
              left: c15.dy,
              child: Container(
                width: 75,
                height: 75,
                
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    image: DecorationImage(image: AssetImage('assets/15.png'))),
                child: GestureDetector(onTap: () {
                  setState(() {
                    double top = c15.dx;
                    double left = c15.dy;
                    bool res = pos(top, left);

                    if (res == true) {
                      temp = c15;
                      c15 = empty;
                      empty = temp;
                    }
                  });
                }),
              ),
            ),
          ]),
        ),
      ),
         ] );
  }
}
