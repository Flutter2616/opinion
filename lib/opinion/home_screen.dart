import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo2.png", height: 300, width: 450),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context,'dash');
              },
              child: Container(
                height: 120,
                width: 120,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 90,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
         color: Colors.blue,
        ),
      ),
    );
  }
}
