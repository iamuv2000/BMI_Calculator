import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.bmiResultText, @required this.bmiInterpretation});
  final String bmiResult;
  final String bmiResultText;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTittlePageStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                      bmiResultText.toUpperCase(),
                    style: kResultStyle
                  ),
                  Text(
                      bmiResult,
                    style:kBMITextStyle
                  ),
                  Text(
                      bmiInterpretation,
                    textAlign: TextAlign.center,
                    style:kBodyTextStyle
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap:  (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
