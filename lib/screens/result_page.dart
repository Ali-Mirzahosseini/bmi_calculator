import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiNumber,
      required this.resultWord,
      required this.resultInterpretation});

  final String resultWord;
  final String bmiNumber;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULT'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 25.0, 50.0, 5.0),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultWord,
                    style: kResultTextStyle,
                  ),
                  Text(bmiNumber, style: kNumberResultTextStyle),
                  Text(
                    resultInterpretation,
                    style: kResultExplanationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
