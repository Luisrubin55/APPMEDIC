import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            "¿En que podemos ayudarte?",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'Introduce tus sintomas',
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Container(
          child: DataTable(
            dividerThickness: 1,
            dataRowHeight: 10,
            headingRowHeight: 50,
            columns: [
              DataColumn(
                label: Text('Lista de sintomas'),
                numeric: true,
              ),
              DataColumn(
                label: Text('Elije una opcion'),
                numeric: true,
                tooltip: 'Opcion'
              ),
            ],
            rows: [],
          ),
        )
      ],
    );
  }
}
