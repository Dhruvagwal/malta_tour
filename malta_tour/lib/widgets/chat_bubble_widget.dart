// Created by Dhruv Aggarwal @dhruvagwal
import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../styles/colors.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final ChatMessageType type;

  ChatBubble({super.key, required this.text, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: bgColor,
          child: type == ChatMessageType.bot
              ? ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset('assets/images/gpt.png'))
              : Icon(Icons.person, color: Colors.white),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                color: type == ChatMessageType.bot ? bgColor : Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Text(
              text.trim(),
              style: TextStyle(
                  color: type == ChatMessageType.bot ? textColor : chatBgColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}

// Created by Dhruv Aggarwal @dhruvagwal