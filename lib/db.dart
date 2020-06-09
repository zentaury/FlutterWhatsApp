
//Traer los grupos
import 'package:cloud_firestore/cloud_firestore.dart';

import 'models/group.dart';

Stream<List<Group>> getGroups() {
  return Firestore.instance.collection('groups').snapshots().map(toGroupList);
  }