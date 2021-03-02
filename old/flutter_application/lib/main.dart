import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_application/screens/welcome/welcome.dart';
import 'package:flutter_application/constants.dart';
// import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeO2',
      theme: ThemeData(
          primaryColor: darkgreenaccents,
          scaffoldBackgroundColor: backgroundcolor),
      home: WelcomeScreen(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   HomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _HomePageState createState() => new _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         //backgroundColor: Color.fromRGBO(242, 252, 252, 1),
//         backgroundColor: Colors.transparent,
//         bottomOpacity: 0.0,
//         elevation: 0.0,
//         centerTitle: true,
//         title: Image.asset('assets/images/MeO2.png'),
//       ),
//       backgroundColor: Color.fromRGBO(242, 252, 252, 1),
//     );
//   }
// }
