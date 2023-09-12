import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key? key,
    this.onTap,
    required this.solJakKubik,
  }) : super(key: key);

  final void Function()? onTap;
  final String solJakKubik;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: onTap,
          child: Image.asset('assets/dice$solJakKubik.png'),
        ),
      ),
    );
  }
}
