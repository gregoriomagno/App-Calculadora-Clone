import 'package:Calculadora/models/memory.dart';
import 'package:Calculadora/widgets/display.dart';

import 'package:Calculadora/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Memory memory =  Memory();
  

  void _setTextDisplay(String command) {

    setState(() {
      memory.applyCommand(command);
     
      
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Display(memory.value,memory.historic),
          Keyboard(funcCB: _setTextDisplay),
        ],
      ),
    );
  }
}
