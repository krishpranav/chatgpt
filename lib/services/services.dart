import 'package:chatgpt/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt/widgets/text_widget.dart';
import 'package:chatgpt/widgets/consts.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        )),
        backgroundColor: scaffoldBgColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextWidget(
                    label: 'Chosen Model: ',
                    fontSize: 16.0,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: DropDownWidget(),
                ),
              ],
            ),
          );
        });
  }
}
