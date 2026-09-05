import 'package:flutter/material.dart';

class InputFormCustom extends StatelessWidget {
  String? hintText, lableText;
  TextEditingController? controller;

  InputFormCustom({
    super.key,
    this.hintText,
    this.lableText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.cyan,
            ),
          ),
          hintText: hintText,
          labelText: lableText,

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}