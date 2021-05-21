import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wemight_urbantech/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fon.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 150, width: 150, child: Image.asset("assets/logo.png")),
          SizedBox(height: 30),
          Text(
            "Sizning shaxsiy tibbiy\nyordamchingiz",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          SizedBox(
              height: 200,
              width: double.infinity,
              child: Lottie.asset("assets/load.json")),
        ],
      ),
    ));
  }
}
