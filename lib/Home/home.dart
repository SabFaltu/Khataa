import 'dart:html';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomDecors {
  BoxDecoration baseBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: const Color.fromARGB(255, 48, 48, 48),
      boxShadow: const [
        BoxShadow(
          blurRadius: 20.0,
          offset: Offset(-10, -10),
          color: Color.fromARGB(255, 63, 63, 63),
          //inset: true,
        ),
        BoxShadow(
          blurRadius: 20.0,
          offset: Offset(10, 10),
          color: Color.fromARGB(255, 33, 33, 33),
          //inset: true,
        ),
      ]);
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            _ExpenseVals(),
          ]),
          const Text(
            'This is the Home Price',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class _ExpenseVals extends StatefulWidget {
  @override
  __ExpenseValsState createState() => __ExpenseValsState();
}

class __ExpenseValsState extends State<_ExpenseVals> {
  int _valThos = 1;
  int _valHuns = 2;
  int _valTens = 3;
  int _valOnes = 4;

  // valFinal = ((_valThos * 1000) + (_valHuns * 100) + (_valTens * 10) +(_valOnes));
  // Widget Vals
  final _infiLoop = true;
  final _numHapticc = true;
  final _numStyle = const TextStyle(fontSize: 31);
  final _selectNumStyle =
      const TextStyle(fontSize: 39, color: Colors.cyanAccent);
  final _numCount = 3;
  final _numHeight = 58.0;
  final _numWidth = 88.0; //65

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 20),
        Container(
          decoration: CustomDecors().baseBoxDecoration,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 16),
              NumberPicker(
                infiniteLoop: _infiLoop,
                itemWidth: _numWidth,
                itemHeight: _numHeight,
                itemCount: _numCount,
                selectedTextStyle: _selectNumStyle,
                textStyle: _numStyle,
                haptics: _numHapticc,
                value: _valThos,
                minValue: 0,
                maxValue: 9,
                onChanged: (value) => setState(() => _valThos = value),
              ),
            ],
          ),
        ),
        Container(
          decoration: CustomDecors().baseBoxDecoration,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 16),
              NumberPicker(
                infiniteLoop: _infiLoop,
                itemWidth: _numWidth,
                itemHeight: _numHeight,
                itemCount: _numCount,
                selectedTextStyle: _selectNumStyle,
                textStyle: _numStyle,
                haptics: _numHapticc,
                value: _valThos,
                minValue: 0,
                maxValue: 9,
                onChanged: (value) => setState(() => _valHuns = value),
              ),
            ],
          ),
        ),
        Container(
          decoration: CustomDecors().baseBoxDecoration,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 16),
              NumberPicker(
                infiniteLoop: _infiLoop,
                itemWidth: _numWidth,
                itemHeight: _numHeight,
                itemCount: _numCount,
                selectedTextStyle: _selectNumStyle,
                textStyle: _numStyle,
                haptics: _numHapticc,
                value: _valThos,
                minValue: 0,
                maxValue: 9,
                onChanged: (value) => setState(() => _valTens = value),
              ),
            ],
          ),
        ),
        Container(
          decoration: CustomDecors().baseBoxDecoration,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 16),
              NumberPicker(
                infiniteLoop: _infiLoop,
                itemWidth: _numWidth,
                itemHeight: _numHeight,
                itemCount: _numCount,
                selectedTextStyle: _selectNumStyle,
                textStyle: _numStyle,
                haptics: _numHapticc,
                value: _valThos,
                minValue: 0,
                maxValue: 9,
                onChanged: (value) => setState(() => _valOnes = value),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
