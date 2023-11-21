import 'package:flutter/material.dart';

class MessageFildBox extends StatelessWidget {
  const MessageFildBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          print("Valor de la caja de texto?");
        },
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submit value $value");
      },
      onChanged: (value) {
        print("Changed $value");
      },
    );
  }
}
