import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class GraphicChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const GraphicChart({
    Key? key,
    required this.seriesList,
    required this.animate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      _createSampleData(),
      animate: animate,
    );
  }

  static List<charts.Series<GraphicsPlayer, DateTime>> _createSampleData() {
    final data = [
      GraphicsPlayer(
        day: DateTime(2021, 11, 16),
        gForce: 225,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 17),
        gForce: 350,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 18),
        gForce: 340,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 19),
        gForce: 400,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 20),
        gForce: 385,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 21),
        gForce: 450,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 22),
        gForce: 670,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 23),
        gForce: 800,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 24),
        gForce: 550,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 25),
        gForce: 580,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
      GraphicsPlayer(
        day: DateTime(2021, 11, 26),
        gForce: 385,
        lineColor: charts.ColorUtil.fromDartColor(const Color(0xFF9F150D)),
      ),
    ];

    return [
      charts.Series<GraphicsPlayer, DateTime>(
        id: "Impact",
        data: data,
        domainFn: (GraphicsPlayer player, _) => player.day,
        measureFn: (GraphicsPlayer player, _) => player.gForce,
        colorFn: (GraphicsPlayer player, _) => player.lineColor,
      )
    ];
  }
}

class GraphicsPlayer {
  final DateTime day;
  final int gForce;
  final charts.Color lineColor;

  GraphicsPlayer({
    required this.day,
    required this.gForce,
    required this.lineColor,
  });
}
