import 'package:FlutterWhatsApp/models/models.dart';
import 'package:flutter/material.dart';
import 'group_tile.dart';

class GroupList extends StatelessWidget {
  const GroupList({
    Key key,
    @required this.groups,
  }) : super(key: key);

  final List<Group> groups;

  @override
  Widget build(BuildContext context) {
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
  }
}
