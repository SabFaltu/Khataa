import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:khataa/Home/expense.dart';
import 'package:khataa/Home/definiter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                ExpenseVals(),
              ]),
//          const Text(
//            'This is the Home Price',
//            style: TextStyle(fontSize: 30),
//          )
        ],
      ),
    );
  }
}
