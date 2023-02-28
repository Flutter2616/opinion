import 'package:flutter/material.dart';

class Last extends StatefulWidget {
  const Last({Key? key}) : super(key: key);

  @override
  State<Last> createState() => _LastState();
}

class _LastState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            data >= 10
                ? Column(
                    children: [
                      Text(
                        "🏆",
                        style: TextStyle(fontSize: 200),
                      ),
                      Text(
                        "You Are Winner",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.amber,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                : Column(
              children: [
                Text(
                  "😪",
                  style: TextStyle(fontSize: 200),
                ),
                Text(
                  "You Are Loser",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Your Total Score = ${data}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: Colors.black),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.home, color: Colors.blue, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
