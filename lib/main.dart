import 'package:flutter/material.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new MyHomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.light,
        accentColor: Colors.black,
      ),

    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String myText = "Hello Alok Sharma";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: _bodyWidget(),
        floatingActionButton: new FloatingActionButton(
          onPressed: _changeText,
            child: new Icon(Icons.skip_next),
        ),
      ),

    );
  }

  void _changeText(){
    setState(() {
      if(myText.startsWith('H')){
        myText = "Welcome To Flutter!!!\nDate: 6th December, 2018";
      }else{
        myText = "Hello Alok Sharma";
      }
    });

  }


  Widget _bodyWidget() {
    return new Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(12.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText, style: new TextStyle(color: Colors.green, fontSize: 22.0),),
          ],
        ),
      ),
    );
  }
}
