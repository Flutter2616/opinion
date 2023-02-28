import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  List quList = [
    "Gandhi was the first Prime Minister of India",
    "Cricket is the National sport of India",
    "India is the world’s largest producer of bananas",
    "Around 82% of Indian households keep a pet elephant",
    "Christianity is the third biggest religion in India",
    "India drives on the right side of the road.",
    "India shares it's longest border with Bangladesh",
    "George Orwell was born in India",
    "No Indian has ever won the Nobel Peace Prize",
    "The River Indus originates in India",
    "India has Qualified for the FIFA World Cup",
    "India does not have any Active Volcanoes",
    "Roughly Fifty Percent of Indians work in agriculture.",
    "Andaman and Nicobar islands are closer to Thailand than to mainland India.",
    "India is larger than Argentina by land area",
    "Almost all Indians are vegetarian"
  ];
  List ansList = [
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    true,
    false,
    false,
    true,
    false,
    true,
    true,
    true,
    false
  ];
  List userAnsList = [];
  int i = 0;
int score=0;
// List item=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Image.asset("assets/images/logo2.png", height: 60, width: 150),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/back3.jpg", fit: BoxFit.fill),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade500,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${quList[i]}",
                      style: TextStyle(
                          letterSpacing: 2,
                          wordSpacing: 0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (i < quList.length) {
                          userAnsList.add(true);
                        }
                        if (i < ansList.length - 1) {
                          i++;
                          // print(userAnsList);
                        }
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green.shade700,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.done, color: Colors.white, size: 25),
                          Text(
                            "TRUE",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (i < quList.length) {
                          userAnsList.add(false);
                        }
                        if (i < ansList.length - 1) {
                          i++;
                        }
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red.shade700,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.close, color: Colors.white, size: 25),
                          Text(
                            "FALSE",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Visibility(
                visible: (i<ansList.length-1)?false:true,
                child: InkWell(
                  onTap: () {
                   for(i=0;i<quList.length-1;i++)
                     {
                       if(ansList[i]==userAnsList[i])
                       {
                          score++;
                       }
                     }
                   // print(score);
                     Navigator.pushReplacementNamed(context,'last',arguments: score);
                  },
                  child: Container(
                    height: 60,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black,width: 2),
                        color: Colors.green),
                    child: Text(
                      "View Score",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
