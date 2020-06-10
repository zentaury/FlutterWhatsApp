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
      itemCount: message.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(message[index].text),
          subtitle: Text(message[index].datetime.toString()),
        );
      },
    );
  }
}