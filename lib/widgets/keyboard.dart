import 'package:flutter/material.dart';

import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final Function(String) funcCB;
  Keyboard({@required this.funcCB});
  final List<Map<String, dynamic>> buttons = [
    {
      'title': 'AC',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '<',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '%',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '/',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '7',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '8',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '9',
      'flex': 1,
      'operation': false,
    },
    {
      'title': 'x',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '4',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '5',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '6',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '-',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '1',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '2',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '3',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '+',
      'flex': 1,
      'operation': true,
    },
    {
      'title': '0',
      'flex': 1,
      'operation': false,
    },
    {
      'title': ',',
      'flex': 1,
      'operation': false,
    },
    {
      'title': '=',
      'flex': 2,
      'operation': true,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ButtonRow(buttons: [
            Button(button: buttons[0], funcCB: funcCB),
            Button(button: buttons[1], funcCB: funcCB),
            Button(button: buttons[2], funcCB: funcCB),
            Button(button: buttons[3], funcCB: funcCB),
          ]),
          ButtonRow(buttons: [
            Button(button: buttons[4], funcCB: funcCB),
            Button(button: buttons[5], funcCB: funcCB),
            Button(button: buttons[6], funcCB: funcCB),
            Button(button: buttons[7], funcCB: funcCB),
          ]),
          ButtonRow(buttons: [
            Button(button: buttons[8], funcCB: funcCB),
            Button(button: buttons[9], funcCB: funcCB),
            Button(button: buttons[10], funcCB: funcCB),
            Button(button: buttons[11], funcCB: funcCB),
          ]),
          ButtonRow(buttons: [
            Button(button: buttons[12], funcCB: funcCB),
            Button(button: buttons[13], funcCB: funcCB),
            Button(button: buttons[14], funcCB: funcCB),
            Button(button: buttons[15], funcCB: funcCB),
          ]),
          ButtonRow(buttons: [
            Button(button: buttons[16], funcCB: funcCB),
            Button(button: buttons[17], funcCB: funcCB),
            Button(button: buttons[18], funcCB: funcCB),
          ]),
        ],
      ),
    );
  }
}
