import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HistoricRow extends StatelessWidget {
  final String _expressionHistoric;
  HistoricRow(this._expressionHistoric);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                _expressionHistoric,
                minFontSize: 10,
                maxFontSize: 20,
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: Colors.grey[600],
                ),
              ),
            ),
      ],
      
    );
  }
}