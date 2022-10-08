import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isloading;
  final VoidCallback onPressed;
  const MainButton(
      {Key? key,
      required this.child,
      required this.color,
      required this.isloading,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
          primary: color,
          fixedSize: Size(screenSize.width * 0.5, screenSize.height * 0.06)),
    );
  }
}
