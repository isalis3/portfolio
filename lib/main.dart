import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animatable<Color> background = TweenSequence<Color>(
    [
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.red,
          end: Colors.orange,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.orange,
          end: Colors.amber,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.amber,
          end: Colors.green,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.green,
          end: Colors.blue,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.blue,
          end: Colors.purple,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.purple,
          end: Colors.pink,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.pink,
          end: Colors.red,
        ),
      ),
    ],
  );
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 60),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Ibson portforlio'),
              centerTitle: true,
            ),
            backgroundColor:
                background.evaluate(AlwaysStoppedAnimation(_controller.value)),
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(21.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                elevation: 0,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('images/dp.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Text(
                            'Ibahim Salisu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ),
                        Text(
                          'Mobile developer',
                          style: TextStyle(
                            color: Colors.white70,
                            letterSpacing: 2.5,
                            fontSize: 15,
                            fontFamily: 'Source Sans Pro',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 175,
                          child: Divider(
                            color: Colors.white54,
                          ),
                        ),
                        GestureDetector(
                          child: Tooltip(
                            message: 'Phone',
                            waitDuration: Duration(milliseconds: 500),
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.phone,
                                      color: Colors.blueGrey[300],
                                    ),
                                    Text(
                                      '+234 8167395212',
                                      style: TextStyle(
                                          color: Colors.blueGrey[300]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Tooltip(
                            message: 'Email',
                            waitDuration: Duration(milliseconds: 500),
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.mail,
                                      color: Colors.blueGrey[300],
                                    ),
                                    Text(
                                      'ibrahimsalisu011@gmail.com',
                                      style: TextStyle(
                                          color: Colors.blueGrey[300]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Tooltip(
                            message: 'Email',
                            waitDuration: Duration(milliseconds: 500),
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Container(
                                        child: Icon(
                                          Icons.mail,
                                          color: Colors.blueGrey[300],
                                        ),
                                        color: Colors.yellow,
                                        height: 60,
                                        width: 90,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        child: Icon(
                                          Icons.phone,
                                          color: Colors.blueGrey[300],
                                        ),
                                        color: Colors.black,
                                        height: 60,
                                        width: 90,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        child: Icon(
                                          Icons.message,
                                          color: Colors.blueGrey[300],
                                        ),
                                        color: Colors.green,
                                        height: 60,
                                        width: 90,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        child: Container(
                                          child: Icon(
                                            Icons.share,
                                            color: Colors.blueGrey[300],
                                          ),
                                          color: Colors.purple,
                                          height: 60,
                                          width: 90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                         
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );

           
        },
      ),
    );
  }
}

class FontAwesomeIcons {}
