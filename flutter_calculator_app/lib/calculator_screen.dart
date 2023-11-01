import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/components/button_components.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var answer = '';

  void equal() {
    String finalValue = userInput;
    finalValue = finalValue.replaceAll("x", "*");

    Parser p = Parser();
    Expression expression = p.parse(finalValue);
    ContextModel contextModel = ContextModel();
    double value = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:22.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userInput.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                 padding: const EdgeInsets.only(right:22.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      answer.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ButtonComponents(
                      onTap: () {
                        userInput = '';
                        answer = '';
                        setState(() {});
                      },
                      text: "AC",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "+/-";
                        setState(() {});
                      },
                      text: "+/-",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "%";
                        setState(() {});
                      },
                      text: "%",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "/";
                        setState(() {});
                      },
                      text: "/",
                      color: const Color(0xffffa00a),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonComponents(
                      onTap: () {
                        userInput += "7";
                        setState(() {});
                      },
                      text: "7",
                    ),
                    ButtonComponents(
                        onTap: () {
                          userInput += "8";
                          setState(() {});
                        },
                        text: "8"),
                    ButtonComponents(
                      onTap: () {
                        userInput += "9";
                        setState(() {});
                      },
                      text: "9",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "x";
                        setState(() {});
                      },
                      text: "x",
                      color: const Color(0xffffa00a),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonComponents(
                      onTap: () {
                        userInput += "4";
                        setState(() {});
                      },
                      text: "4",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "5";
                        setState(() {});
                      },
                      text: "5",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "6";
                        setState(() {});
                      },
                      text: "6",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "-";
                        setState(() {});
                      },
                      text: "-",
                      color: const Color(0xffffa00a),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonComponents(
                      onTap: () {
                        userInput += "1";
                        setState(() {});
                      },
                      text: "1",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "2";
                        setState(() {});
                      },
                      text: "2",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "3";
                        setState(() {});
                      },
                      text: "3",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += "+";
                        setState(() {});
                      },
                      text: "+",
                      color: const Color(0xffffa00a),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonComponents(
                      onTap: () {
                        userInput += "0";
                        setState(() {});
                      },
                      text: "0",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput += ".";
                        setState(() {});
                      },
                      text: ".",
                    ),
                    ButtonComponents(
                      onTap: () {
                        userInput= userInput.substring(0, userInput.length - 1);
                        setState(() {});
                      },
                      text: "DEL",
                    ),
                    ButtonComponents(
                      onTap: () {
                        equal();
                        setState(() {});
                      },
                      text: "=",
                      color: const Color(0xffffa00a),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
