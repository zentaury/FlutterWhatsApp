import 'package:FlutterWhatsApp/components/chat/chat_components.dart';
import 'package:FlutterWhatsApp/components/show_error.dart';
import 'package:FlutterWhatsApp/components/show_loading.dart';
import 'package:FlutterWhatsApp/db.dart' as db;
import 'package:FlutterWhatsApp/models/models.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Group group = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(group.name),
      ),
      body: StreamBuilder(
        stream: db.getGroupMessages(group.id),
        builder: (context, AsyncSnapshot<List<Message>> snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
            return ShowError(snapshot.error);
          }
          if (!snapshot.hasData) {
            return Loading();
          }
          return Column(
            children: [
              Expanded(
                child: MessageList(message: snapshot.data),
              ),
              MessageBox(onSend: (text) {
                db.sendMessage(group.id, Message(text));
              }),
            ],
          );
        },
      ),
    );
  }
}


