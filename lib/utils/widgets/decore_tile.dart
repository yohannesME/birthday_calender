import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_green_app/app_libs.dart';

class DecoreTile extends StatelessWidget {
  DecoreTile({
    super.key,
    required this.w1,
    required this.h1,
    required this.w2,
    required this.h2,
    required this.color,
  });

  double w1;
  double h1;
  double w2;
  double h2;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: w1,
            height: h1,
            color: color,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: w2,
            height: h2,
            color: color,
          ),
        ],
      ),
    );
  }
}
