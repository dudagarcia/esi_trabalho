import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'counter.dart';

class CounterWithFavIcone extends StatelessWidget {
  const CounterWithFavIcone({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Counter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}
