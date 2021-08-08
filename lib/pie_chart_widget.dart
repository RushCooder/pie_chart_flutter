import 'package:flutter/material.dart';
import 'package:pie_chart_demo/pie_chart_paint.dart';

class PieChartWidget extends StatelessWidget {
  final total;
  final used;
  const PieChartWidget({required this.total, required this.used, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double free = total - used;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.43,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                // height: 10,
                // width: 10,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(237, 237, 237, 1),
                  // color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: -10,
                      blurRadius: 17,
                      offset: Offset(-5, -5),
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    BoxShadow(
                      spreadRadius: -2,
                      blurRadius: 10,
                      offset: Offset(7, 7),
                      color: Color.fromRGBO(206, 220, 226, 1),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        width: constraints.maxWidth * 0.6,
                        child: CustomPaint(
                          child: Center(
                            child: Text(
                              used.toString(),
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                          ),
                          foregroundPainter: PieChartPaint(
                            used,
                            free,
                            constraints.maxWidth * 0.1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
