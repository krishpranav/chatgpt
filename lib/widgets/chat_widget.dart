import 'package:chatgpt/widgets/consts.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatgpt/widgets/text_widget.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, required this.msg, required this.chatIndex})
      : super(key: key);

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBgColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      chatIndex == 0
                          ? 'images/person.png'
                          : 'images/chat_logo.png',
                      height: 30.0,
                      width: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: chatIndex == 0
                          ? TextWidget(
                              label: msg,
                            )
                          : DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                              child: AnimatedTextKit(
                                isRepeatingAnimation: false,
                                repeatForever: true,
                                displayFullTextOnTap: false,
                                totalRepeatCount: 0,
                                stopPauseOnTap: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    msg.trim(),
                                  ),
                                ],
                              )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
