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
                      onTap: firstCount,
                      child: Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                  InkWell(
                      onTap: secondCount,
                      child: Container(
                        color: Colors.blue,
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
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          ),

                          width: 175,
                          height: 175,
                          child: Align(
                            alignment:Alignment.center,
                            child: Text(
                                "Перший скрін: " + data.oldCount.toString()),
                          ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: threeCount,
                      child: Container(
                        color: Colors.blue,
                        width: 75,
                        height: 75,
                      )),
                  InkWell(
                      onTap: fourCount,
                      child: Container(
                        color: Colors.blue,
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

  firstCount() {

    setState(() {
data.totalCount+=1;
if(data.totalCount==4){
  data.leftUpActive=true;
}

      data.leftUp++;
      data.oldCount +=1;
    });
  }

  secondCount() {
    data.totalCount+=1;
    if(data.totalCount==4){
      data.rightUpActive=true;
    }

    setState(() {
      data.rightUp++;
      data.oldCount +=1;
    });
  }

  threeCount() {
    data.totalCount+=1;
    if(data.totalCount==4){
      data.leftDownActive=true;
    }

    setState(() {
      data.leftDown++;
      data.oldCount += 1 ;
    });
  }

  fourCount() {
    data.totalCount+=1;
    if(data.totalCount==4){
      data.rightDownActive=true;
    }

    setState(() {
      data.rightDown++;
      data.oldCount +=1 ;
    });
  }
}
