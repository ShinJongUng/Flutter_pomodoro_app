//dart 기본 패키지
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class analyzePage extends StatelessWidget {
  const analyzePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Color(0xffFBEAEB),
        child: Center(
          child: Text(
            'analyzePage(개발중)',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
