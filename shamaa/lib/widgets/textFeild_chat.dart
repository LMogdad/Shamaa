import 'package:flutter/material.dart';
import 'package:shamaa/style/custom_colors.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
    required this.controller,
    required this.onPressed,
    // required this.toUserId,
  });

  final TextEditingController controller;
  final Function() onPressed;
  // final String toUserId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: TextField(
        minLines: 1,
        maxLines: 4,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.send),
            ),
            filled: true,
            fillColor: ExtraLightGrey,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
