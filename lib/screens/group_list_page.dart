import 'package:FlutterWhatsApp/components/group/group_components.dart';
import 'package:FlutterWhatsApp/components/show_error.dart';
import 'package:FlutterWhatsApp/components/show_loading.dart';
import 'package:FlutterWhatsApp/db.dart' as db;
import 'package:FlutterWhatsApp/models/group.dart';
import 'package:flutter/material.dart';

class GroupListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter WhatsApp'),
      ),
      body: StreamBuilder(
        stream: db.getGroups(),
        builder: (context, AsyncSnapshot<List<Group>> snapshot) {
          if (snapshot.hasError) {
            return ShowError(snapshot.error);
          }
          if (!snapshot.hasData) {
            return Loading();
          }
          List<Group> groups = snapshot.data;
          return GroupList(groups: groups);
        },
      ),
    );
  }
}





