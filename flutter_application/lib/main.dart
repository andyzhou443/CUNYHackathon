import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: new ThemeData(),
      home: HomePage(title: 'MeO2'),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.lightBlue[50],
//         body: Center(
//           child: Text(
//             "MeO2",
//             style: TextStyle(
//                 fontSize: 50,
//                 fontFamily: 'Sansation',
//                 color: Colors.green[900]),
//           ),
//         ),
//       ),
//     );
//   }
// }
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Color.fromRGBO(242, 252, 252, 1),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset('assets/images/MeO2.png'),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: new Text("MeO2",
        //     style: TextStyle(
        //         fontSize: 40,
        //         fontFamily: 'Roboto',
        //         color: Color.fromRGBO(70, 101, 81, 1))),
      ),
      backgroundColor: Color.fromRGBO(242, 252, 252, 1),

      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          children: <Widget>[
            new Text(
              'Current Daily Total: ',
              style: TextStyle(
                  fontSize: 40, fontFamily: 'Roboto', color: Colors.green[900]),
            ),
            new Text(
              "\n\n\n\t\t\t\t\t\t\t\t\t\t\t\tkg",
              style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 20, color: Colors.green[900]),
            ),
            new Text(
              '$_counter',
              //style: Theme.of(context).textTheme.headline1,
              style: TextStyle(
                  fontSize: 100,
                  fontFamily: 'Roboto',
                  color: Colors.green[900]),
            ),
          ],
        ),
      ),
      //       RaisedButton(
      //   shape: StadiumBorder(),
      //   onPressed: _incrementCounter,
      //   child: Text("Button"),
      // )
      floatingActionButton: FloatingActionButton.extended(
        // FloatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Color.fromRGBO(54, 140, 114, .10),
        onPressed: _incrementCounter,
        tooltip: 'Increment',

        label: Text(
          "Add CO2",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromRGBO(70, 101, 81, 1)),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget build(BuildContext context) {
  return Image(image: AssetImage('assets/images/download.png'));
}
