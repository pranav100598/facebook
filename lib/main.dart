import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fblogo.png'),
                    radius: 40,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'FACEBOOK',
                    style: TextStyle(
                        letterSpacing: 2.6,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Center(
                    heightFactor: 2.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                        Text('  '),
                        Icon(
                          Icons.message,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
