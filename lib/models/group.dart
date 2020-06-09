import 'package:cloud_firestore/cloud_firestore.dart';

class Group {
  String id;
  String name;

  Group.fromFirestore(DocumentSnapshot doc)
    : id = doc.documentID,
      name = doc.data['name'];

}

//Convertir Lista de tipo QuerySnapshot a Group
List<Group> toGroupList(QuerySnapshot query) {
  return query.documents.map((doc) => Group.fromFirestore(doc)).toList();
}