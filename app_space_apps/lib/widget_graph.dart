import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartWidget extends StatelessWidget {
  final List<String> categories;
  final List<double> values;

  const BarChartWidget({super.key, required this.categories, required this.values});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          width: 500,
          child: BarChart(
            BarChartData(
              gridData: FlGridData(show: false), // Personalizar grid
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return Text(value.toString()); // Etiquetas para el eje X superior
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      final int index = value.toInt();
                      if (index < 0 || index >= categories.length) return const Text('');
                      return Text(categories[index]); // Etiquetas para el eje X inferior
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(show: true),
              barGroups: values.asMap().entries.map((entry) {
                final int index = entry.key;
                final double value = entry.value;

                return BarChartGroupData(
                  x: index,
                  barRods: [
                    BarChartRodData(
                      toY: value, // Se cambió 'y' por 'toY'
                      color: const Color.fromARGB(255, 238, 198, 67), // Color principal
                      width: 50,
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.white60],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ), // Degradado de color
                      borderRadius: const BorderRadius.all(Radius.circular(0)), // Borde cuadrado
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  insetPadding: const EdgeInsets.all(0),
                  title: const Text('Information1'),
                  content: const SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('here it goes the AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA infoooo'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Cerrar
                      },
                      child: const Text('Go back to Homepage'),
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 238, 198, 67),
            maximumSize: Size.fromWidth(MediaQuery.of(context).size.width - 40.0),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          child: const Text('Info title\nHere i put just a brief summary designed to attract the readers attention :P'),
        ),
      ],
    );
  }
}