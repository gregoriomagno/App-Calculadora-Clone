import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function(String) funcCB;
  final Map button;

  Button({
    @required this.button,
    @required this.funcCB,
  });

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      flex: button['flex'],
      child: RaisedButton(
        color: Colors.black,
        onPressed: ()=> funcCB(button['title']),
        child: Text(
          button['title'],
          style: TextStyle(
            color: button['operation'] ? Colors.orange : Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
