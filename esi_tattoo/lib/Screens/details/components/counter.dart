import 'package:flutter/material.dart';

import '../../../constants.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int numOfItens = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
         // icon: Icons.remove,
          /*press: () {
            if (numOfItens > 1) {
              setState(() {
                numOfItens--;
              });
            }
          },*/
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItens.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ElevatedButton(
          //icon: Icons.add,
          /*press: () {
            setState(() {
              numOfItens++;
            });
          },*/
        ),
      ],
    );
  }

  SizedBox ElevatedButton(/*{IconData icon, Function press}*/) {
    return SizedBox(
      width: 40,
      height: 32,
      child: ElevatedButton(
       // onPressed: press,
        //child: Icon(icon),
      ),
    );
  }
}
