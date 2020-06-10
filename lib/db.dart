//Traer los grupos
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/models.dart';

//Consulta los grupos a la base de datos Cloud Firestore
Stream<List<Group>> getGroups() {
  return Firestore.instance.collection('groups').snapshots().map(toGroupList);
}

Stream<List<Message>> getGroupMessages(String groupId) {
  return Firestore.instance
      .collection('groups/$groupId/messages').orderBy('datetime', descending: true)
      .snapshots()
      .map(toMessageList);
}

Future<void> sendMessage(String groupId, Message message) async {
  await Firestore.instance.collection('groups/$groupId/messages').add(message.toFirestore());
}
