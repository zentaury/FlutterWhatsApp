import 'package:FlutterWhatsApp/models/group.dart';
import 'package:flutter/material.dart';

class GroupTile extends StatelessWidget {
  final Group group;
  const GroupTile(this.group);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed('/chat', arguments: group);
      },
      leading: Container(
        width: 45.0,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          shape: BoxShape.circle,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(group.name),
          Text('9/6/2020',
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 15,
          ),),
        ],
        
      ),
      subtitle: Text(group.id),
    );
  }
}