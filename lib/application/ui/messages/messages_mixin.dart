import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin MessagesMixin on GetxController {
  void messageListener(Rxn<MessageModel> message) {
    ever<MessageModel?>(message, (model) {
      if (model != null) {
        Get.snackbar(
          model.title,
          model.message,
          backgroundColor: model.type.color(),
        );
      }
    });
  }
}

class MessageModel {
  final String title;
  final String message;
  final Messagetype type;

  MessageModel({
    required this.title,
    required this.message,
    required this.type,
  });

  MessageModel.error({
    required this.title,
    required this.message,
  }) : type = Messagetype.error;

  MessageModel.info({
    required this.title,
    required this.message,
  }) : type = Messagetype.info;
}

enum Messagetype { error, info }

extension MessageTypeExtension on Messagetype {
  Color color() {
    switch (this) {
      case Messagetype.error:
        return Colors.red[600] ?? Colors.red;
      case Messagetype.info:
        return Colors.blue[200] ?? Colors.blue;
    }
  }
}
