import 'package:FlutterWhatsApp/components/chat/chat_components.dart';
import 'package:FlutterWhatsApp/models/models.dart';
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key key,
    @required this.message,
  }) : super(key: key);

  final List<Message> message;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: message.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: MessageWidget(message[index],),
        );
      },
    );
  }
}

