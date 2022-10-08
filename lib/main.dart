import 'package:amazon_clon/screens/sigin_screen.dart';
import 'package:amazon_clon/utlis/colors.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(AmozoneClone());
}

class AmozoneClone extends StatelessWidget {
  const AmozoneClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SigInScreen(),
      ),
    );
  }
}
