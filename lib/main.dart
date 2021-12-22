import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Card Stack'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(       
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 10,
              child: Card(
                elevation: 4,
                color: Color.fromARGB(255, 240, 230, 230),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: Card(
                elevation: 12,
                color: Color.fromARGB(255, 0, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 220,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Card(
                elevation: 10,
                color: Color.fromARGB(255, 200, 0, 0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 240,
                  height: 200,
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
