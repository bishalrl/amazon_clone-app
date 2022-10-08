import 'package:flutter/material.dart';

class FOrm_Field extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool obsecureText;
  final String hintText;

  const FOrm_Field(
      {Key? key,
      required this.title,
      required this.controller,
      required this.obsecureText,
      required this.hintText})
      : super(key: key);

  @override
  State<FOrm_Field> createState() => _FOrm_FieldState();
}

class _FOrm_FieldState extends State<FOrm_Field> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          maxLines: 1,
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2))),
        ),
      ],
    ));
  }
}
