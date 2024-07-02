import 'package:flutter/material.dart';

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
          body: Center(
            child: teksUtama,
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Refresh',
            child: Icon(Icons.refresh),
            onPressed: teksUtama.state.incrementIndex,
          ))));
}

class StateTeksUtama extends State<TeksUtama> {
  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  var listNama = [
    'Adellia Oktaviani',
    'Muarif Subekhi',
    'Shafira Indes Prafitri',
    'Tri Rahayu',
    'Rahayu Dwi Setiowati'
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa Kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]),
        )
      ],
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}
