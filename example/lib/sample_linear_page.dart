import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SampleLinearPage extends StatefulWidget {
  @override
  _SampleLinearPageState createState() => _SampleLinearPageState();
}

class _SampleLinearPageState extends State<SampleLinearPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Percent Indicators"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: FittedBox(
                  child: LinearPercentIndicator(
                    width: 140.0,
                    fillColor: Colors.green,
                    lineHeight: 14.0,
                    percent: 0.5,
                    center: Text(
                      "50.0%",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    trailing: Icon(Icons.mood),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 500,
                  lineHeight: 20.0,
                  leading: Expanded(
                    child: Text("left content"),
                  ),
                  trailing: Expanded(
                      child: Text(
                    "right content",
                    textAlign: TextAlign.end,
                  )),
                  percent: 0.2,
                  center: Text("20.0%"),
                  linearStrokeCap: LinearStrokeCap.butt,
                  progressColor: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2000,
                  percent: 0.9,
                  animateFromLastPercent: true,
                  center: Text("90.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.greenAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.8,
                  center: Text("80.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.55,
                  center: Text("55.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.2,
                      progressColor: Colors.red,
                    ),
                    LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.5,
                      progressColor: Colors.orange,
                    ),
                    LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.9,
                      progressColor: Colors.blue,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
