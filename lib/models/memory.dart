import 'package:function_tree/function_tree.dart';

class Memory {
  String _value;
  List<String> _historic;
  bool _flagResultado;
  Memory() {
    _value = '0';
    _flagResultado = false;
    _historic=[];
  }
  get value {
    return _value;
  }
  get historic{
    return _historic;
  }
  void allClear() {
    _value = '0';
  }

  void result() {
    _flagResultado = true;
    String _expression = _value;

    _expression = _value.replaceAll('x', '*');
    _expression = _expression.replaceAll(',', '.');

    var _result = _expression.interpret();
    _historic.add( "$_value = $_result");
    print(_historic);
    _value = '=$_result';
   
  }

  void applyCommand(String command) {
    if (_flagResultado) {
      if (!'+/x%-'.contains(command)) {
        allClear();
      } else {
        _value = _value.substring(1);
      }
    }

    _flagResultado = false;
    if (_value == '0' || command == '<') {
      if (command == '<' ) {
        if (_value.length == 1) {
          _value = '0';
        } else {
          _value = _value.substring(0, _value.length - 1);
        }
      } else if ('+/x%=AC<'.contains(command)) {
      } else if (command == ',') {
        _value += command;
      } else {
        _value = command;
      }
    } else {
      String _lastCommand = _value[_value.length - 1];
      if (command == 'AC') {
        allClear();
      } else if ('+/x<%AC-,'.contains(command) &&
          '+/x<%AC-,'.contains(_lastCommand)) {
      } else if (_lastCommand == '/' && command == '0') {
      } else if (command == '=') 
      {
        if('+/x%-,'.contains(_lastCommand)){
        }else{
        result();
        }
      } else {
        _value += command;
      }
    }
    
  }
}
