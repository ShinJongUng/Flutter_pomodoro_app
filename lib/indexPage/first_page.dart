//dart 기본 패키지
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//dart 시간 chart 패키지
import 'package:time_chart/time_chart.dart';

class analyzePage extends StatelessWidget {
  const analyzePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final sizedBox = const SizedBox(height: 16);

    final data = [ DateTimeRange(
      start: DateTime(2021,2,24,23,15),
      end: DateTime(2021,2,25,7,30),
    ),];


    return SizedBox.expand(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xffFBEAEB),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: [
                  const Text('Weekly time chart'),
                  TimeChart(
                    data: data,
                    viewMode: ViewMode.weekly,
                  ),
                  sizedBox,
                  const Text('Monthly time chart'),
                  TimeChart(
                    data: data,
                    viewMode: ViewMode.monthly,
                  ),
                  sizedBox,
                  const Text('Weekly amount chart'),
                  TimeChart(
                    data: data,
                    chartType: ChartType.amount,
                    viewMode: ViewMode.weekly,
                    barColor: Colors.deepPurple,
                  ),
                  sizedBox,
                  const Text('Monthly amount chart'),
                  TimeChart(
                    data: data,
                    chartType: ChartType.amount,
                    viewMode: ViewMode.monthly,
                    barColor: Colors.deepPurple,
                  ),
                ],
              ),
            ),
        ),

      ),
    );
  }
}
