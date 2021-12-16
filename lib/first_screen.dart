import 'package:ekzamen/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/data.dart';

class FirsScreen extends StatefulWidget {
  const FirsScreen({Key? key}) : super(key: key);

  @override
  _FirsScreenState createState() => _FirsScreenState();
}

class _FirsScreenState extends State<FirsScreen> {
  @override
  Widget build(BuildContext context) {

    return Row(
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
                  InkWell(
                      onTap:(data.leftUpActive) ?  nothing:firstCount,
                      child: Container(
                        color:(data.leftUpActive)? Colors.grey:Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                  InkWell(
                      onTap:(data.rightUpActive)?  nothing:secondCount,
                      child: Container(
                        color:(data.rightUpActive)? Colors.grey:Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()),
                        );
                      },
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
                                "Перший скрін: " + data.oldCount.toString()),
                          ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (data.leftDownActive)?nothing:threeCount,
                      child: Container(
                        color:(data.leftDownActive)? Colors.grey:Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                  InkWell(
                      onTap: (data.rightDownActive)?nothing:fourCount,
                      child: Container(
                        color:(data.rightDownActive)? Colors.grey:Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
nothing(){
    setState(() {

    });
}
  firstCount() {
    setState(() {
      data.totalCount += 1;
      if (data.totalCount == 4) {

        data.totalCount=0;
        data.leftUpActive = true;
        data.rightUpActive = false;
        data.leftDownActive = false;
        data.rightDownActive = false;
      }

      data.leftUp++;
      data.oldCount += 1;
    });
  }

  secondCount() {
    data.totalCount += 1;
    if (data.totalCount == 4) {
      data.totalCount=0;
      data.leftUpActive = false;
      data.rightUpActive = true;
      data.leftDownActive = false;
      data.rightDownActive = false;
    }

    setState(() {
      data.rightUp++;
      data.oldCount += 1;
    });
  }

  threeCount() {
    data.totalCount += 1;
    if (data.totalCount == 4) {
      data.totalCount=0;
      data.leftUpActive = false;
      data.rightUpActive = false;
      data.leftDownActive = true;
      data.rightDownActive = false;
    }

    setState(() {
      data.leftDown++;
      data.oldCount += 1;
    });
  }

  fourCount() {
    data.totalCount += 1;
    if (data.totalCount == 4) {
      data.totalCount=0;
      data.leftUpActive = false;
      data.rightUpActive = false;
      data.leftDownActive = false;
      data.rightDownActive = true;
    }

    setState(() {
      data.rightDown++;
      data.oldCount += 1;
    });
  }
}
