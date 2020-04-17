import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyHomePage2());

class MyHomePage2 extends StatefulWidget {

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {

  final List<String> _duSchaffstEsList = [
    'Wenn du alles gibst, kannst du dir nichts vorwerfen',
    'Warte nicht darauf, dass es einfacher wird, werde du besser',
    'Don\'t tell people your dreams, show them',
    'Wenn alles nicht so läuft wie du es denkst, dann denke anders',
    "Die schwersten Steine sind die, die man sich selbst in den Weg legt"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          title: Text('Du schaffst es App'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: AnimatedSwitcher(
                  transitionBuilder: (child, animation)=>RotationTransition(
                    turns: animation,
                    child: child,
                  ),
                  duration: Duration(milliseconds: 300),
                  child: Text(_duSchaffstEsList[Random().nextInt(_duSchaffstEsList.length)], style: TextStyle(fontSize: 40, color: Colors.white),
                    textAlign: TextAlign.center,
                    key: UniqueKey(),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[700].withOpacity(.1),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text('Mehr', style: TextStyle(fontSize: 50, color: Colors.deepPurple[700]),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

