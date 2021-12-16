import 'package:flutter/material.dart';

import 'data/data.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                        child: Text(data.leftUp.toString())),
                    Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                        child: Text(data.rightUp.toString())),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: saveOption,
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1000)),
                            ),
                            width: 175,
                            height: 175,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "Другий скрін: " + data.oldCount.toString()),
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                        child: Text(data.leftDown.toString())),
                    Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                        child: Text(data.rightDown.toString())),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  saveOption() {
    setState(() {
      data.leftUpActive = false;
      data.rightUpActive = false;
      data.leftDownActive = false;
      data.rightDownActive = false;
      data.leftDown = 0;
      data.leftUp = 0;
      data.rightUp = 0;
      data.rightDown = 0;
    });
  }
}
