//dart 기본 패키지
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class accountPage extends StatelessWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Color(0xffFBEAEB),
        child: Center(
          child: Text(
            'accountPage(개발중)',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
