import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hinttext;

  const CustomTextField({
    required this.hinttext,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _State();
}

class _State extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: widget.hinttext,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
