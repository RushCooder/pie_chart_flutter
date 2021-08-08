import 'package:flutter/material.dart';
import 'package:pie_chart_demo/pie_chart_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pie chart"),
        ),
        body: SafeArea(
          child: PieChartWidget(
            total: 30,
            used: 18.5,
          ),
        ),
      ),
    );
  }
}
