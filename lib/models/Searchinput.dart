import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;

  const SearchInput(
    {required this.textController, required this.hintText, Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 0,
            color: const Color.fromARGB(255, 61, 60, 60).withOpacity(.4),
          ),
        ],
      ),
      width: 350.0,
      child: TextField(
        controller: textController,
        onChanged: (value) {},
        decoration: InputDecoration(
          prefixIcon:
              const Icon(Icons.search, color: Color.fromARGB(255, 64, 58, 58)),
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 64, 58, 58)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 192, 188, 188), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
        ),
      ),
    );
  }
}
