import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  String id, text, userId;
  DateTime datetime;

  Message.fromFirestore(DocumentSnapshot doc)
  : id = doc.documentID,
    text = doc.data['text'],
    datetime = (doc.data['datetime'] as Timestamp).toDate();

}

//Convertir Lista de tipo QuerySnapshot a Message
List<Message> toMessageList(QuerySnapshot query) {
  return query.documents.map((doc) => Message.fromFirestore(doc)).toList();
}