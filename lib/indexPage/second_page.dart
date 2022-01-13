//dart 기본 패키지
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class timerPage extends StatefulWidget {
  const timerPage({Key? key}) : super(key: key);

  @override
  _timerPageState createState() => _timerPageState();
}

class _timerPageState extends State<timerPage> {
  Timer timer = Timer(Duration(milliseconds: 1), () {});
  int countTime = 2500;
  bool isRunning = false;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Color(0xffFBEAEB),
        child: _buildBody()
      )

    );
  }
  Widget _buildBody() {
    int secondCount = countTime ~/ 100;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '$secondCount',
                      style: TextStyle(fontSize: 50.0),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 20,
              child: FloatingActionButton(
                backgroundColor: Color(0xff2E3C7E),
                onPressed: _clickResetButton,
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 20,
              child: FloatingActionButton(
                backgroundColor: Color(0xff2E3C7E),
                onPressed: _clickPlayButton,
                child: Icon(isRunning? Icons.pause:Icons.play_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _start() {
    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        if(countTime == 0){
          print('finish');
          _pause();
          isRunning = false;
        }
        countTime--;
      });
    });
  }

  void _pause() {
    timer.cancel();
  }
  void _clickPlayButton() {
    if(countTime >= 0){
      isRunning = !isRunning;
      if (isRunning) {
        _start();
      }
      else {
        _pause();
      }
    }
  }
  void _clickResetButton() {
    setState(() {
      isRunning = false;
      timer.cancel();
      countTime = 200;
    });
  }
}



