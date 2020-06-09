import 'package:FlutterWhatsApp/components/group/group_tile.dart';
import 'package:FlutterWhatsApp/db.dart' as db;
import 'package:FlutterWhatsApp/models/group.dart';
import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
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
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(
                  backgroundColor: Colors.red,
                ),
              ),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Group> groups = snapshot.data;
          return ListView.separated(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return GroupTile(groups[index]);
              },
              separatorBuilder: (context, index){
                return Divider(
                  height: 1,
                  indent: 75,
                  endIndent: 15,
                );
              },
          );
        },
      ),
    );
  }
}


