import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  Color backgroundColor = Color(0xffE8B4B8);
  Color buttonBackgroundColor = Color(0xffEED6D3);
  Color buttonTextColor = Color(0xff67595E);
  Color buttonOperatorColor = Color(0xffEED6D3);
  Color boxShadow1 = Colors.grey[400];
  Color boxShadow2 = Colors.white;

  double margin = 8.0;
  double fontSize = 0;

  String question = '';
  String answer = 'answer';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    if (screenWidth <= 100 || screenHeight <= 100) {
      fontSize = 3;
    }
    if (screenWidth <= 300 || screenHeight <= 300) {
      fontSize = 6;
    }
    if (screenWidth <= 400 || screenHeight <= 400) {
      fontSize = 9;
    }
    if (screenWidth <= 600 || screenHeight <= 600) {
      fontSize = 12;
    }
    if (screenWidth <= 700 || screenHeight <= 700) {
      fontSize = 15;
    }
    if (screenWidth <= 800 || screenHeight <= 800) {
      fontSize = 18;
    }
    if (screenWidth <= 900 || screenHeight <= 900) {
      fontSize = 21;
    }
    if (screenWidth <= 1000 || screenHeight <= 1000) {
      fontSize = 24;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 40, 0, 20),
                    child: Text(
                      question,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: fontSize + 20,
                        color: buttonTextColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: backgroundColor,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonClear,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                'C',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonClearOne,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '←',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonPlusOrMinus,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '+/-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonDivide,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '÷',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button7,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '7',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button8,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '8',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button9,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '9',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonMultiply,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '×',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button4,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button5,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button6,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '6',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonMinus,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button1,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button2,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button3,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonPlus,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '+',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: button0,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '0',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonDot,
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackgroundColor,
                              ),
                              child: Text(
                                '.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: buttonBackgroundColor,
                            margin: EdgeInsets.all(margin),
                            child: ElevatedButton(
                              onPressed: buttonEqual,
                              style: ElevatedButton.styleFrom(
                                primary: buttonOperatorColor,
                              ),
                              child: Text(
                                '=',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  button0() {
    setState(() {
      question += '0';
    });
  }

  void buttonDot() {
    setState(() {
      question += '.';
    });
  }

  void button1() {
    setState(() {
      question += '1';
    });
  }

  void button2() {
    setState(() {
      question += '2';
    });
  }

  void button3() {
    setState(() {
      question += '3';
    });
  }

  void button4() {
    setState(() {
      question += '4';
    });
  }

  void button5() {
    setState(() {
      question += '5';
    });
  }

  void button6() {
    setState(() {
      question += '6';
    });
  }

  void button7() {
    setState(() {
      question += '7';
    });
  }

  void button8() {
    setState(() {
      question += '8';
    });
  }

  void button9() {
    setState(() {
      question += '9';
    });
  }

  void buttonClear() {
    setState(() {
      question = '';
    });
  }

  void buttonPlus() {
    setState(() {
      question += '+';
    });
  }

  void buttonMinus() {
    setState(() {
      question += '-';
    });
  }

  void buttonMultiply() {
    setState(() {
      question += '×';
    });
  }

  void buttonDivide() {
    setState(() {
      question += '÷';
    });
  }

  void buttonEqual() {
    setState(() {});
  }

  void buttonClearOne() {
    setState(() {
      question = question.substring(0, question.length - 1);
    });
  }

  void buttonPlusOrMinus() {
    setState(() {});
  }
}
