import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calculator_controller.dart';

class CalculatorPage extends GetView<CalculatorController> {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildButton(String buttonText, [Color backgroundColor = const Color.fromRGBO(51, 51, 51, 1), Color textColor = const Color.fromRGBO(255, 255, 255, 1)]) {
      return Expanded(
        child: TextButton(
          style: ButtonStyle(
            // minimumSize: MaterialStateProperty.all(const Size(8.0, 8.0)),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(const CircleBorder()),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0)),
          ),
          onPressed: () {
            controller.increment(buttonText);
          },
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 30.0, color: textColor, fontWeight: FontWeight.normal),
          ),
        ),
      );
    }

    return Obx(
      () => Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                controller.expressions.value,
                style: const TextStyle(fontSize: 60.0, color: Color.fromRGBO(221, 221, 221, 1), fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildButton("AC", const Color.fromRGBO(165, 165, 165, 1), const Color.fromRGBO(0, 0, 0, 1)),
                  buildButton("+/-", const Color.fromRGBO(165, 165, 165, 1), const Color.fromRGBO(0, 0, 0, 1)),
                  buildButton("%", const Color.fromRGBO(165, 165, 165, 1), const Color.fromRGBO(0, 0, 0, 1)),
                  buildButton("/", const Color.fromRGBO(254, 160, 10, 1), const Color.fromRGBO(255, 255, 255, 1)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("*", const Color.fromRGBO(254, 160, 10, 1), const Color.fromRGBO(255, 255, 255, 1)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("-", const Color.fromRGBO(254, 160, 10, 1), const Color.fromRGBO(255, 255, 255, 1)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("+", const Color.fromRGBO(254, 160, 10, 1), const Color.fromRGBO(255, 255, 255, 1)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("."),
                  buildButton("=", const Color.fromRGBO(254, 160, 10, 1), const Color.fromRGBO(255, 255, 255, 1)),
                ],
              ),
              const SizedBox(height: 8.0),
            ],
          )
        ]),
      ),
    );
  }
}
