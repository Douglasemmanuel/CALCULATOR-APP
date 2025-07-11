import 'package:flutter/material.dart';


// Models for calculator functionality
class CalculatorState {
  final String display;
  final double? currentValue;
  final double? previousValue;
  final String? operation;
  final bool shouldResetDisplay;
  final double memory;
  final List<CalculationHistory> history;
  
  const CalculatorState({
    this.display = "0",
    this.currentValue,
    this.previousValue,
    this.operation,
    this.shouldResetDisplay = false,
    this.memory = 0,
    this.history = const [],
  });
  
  CalculatorState copyWith({
    String? display,
    double? currentValue,
    double? previousValue,
    String? operation,
    bool? shouldResetDisplay,
    double? memory,
    List<CalculationHistory>? history,
  }) {
    return CalculatorState(
      display: display ?? this.display,
      currentValue: currentValue ?? this.currentValue,
      previousValue: previousValue ?? this.previousValue,
      operation: operation ?? this.operation,
      shouldResetDisplay: shouldResetDisplay ?? this.shouldResetDisplay,
      memory: memory ?? this.memory,
      history: history ?? this.history,
    );
  }
}

class CalculationHistory {
  final String expression;
  final String result;
  final DateTime timestamp;
  
  CalculationHistory({
    required this.expression,
    required this.result,
    required this.timestamp,
  });
}

enum ButtonType {
  number,
  operation,
  function,
  memory,
  utility,
}

class CalculatorButton {
  final String text;
  final String value;
  final ButtonType type;
  final Color? color;
  final Color? textColor;
  
  const CalculatorButton({
    required this.text,
    required this.value,
    required this.type,
    this.color,
    this.textColor,
  });
}
