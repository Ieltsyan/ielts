import 'package:cloud_firestore/cloud_firestore.dart';

class ListeningApi {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;
 late CollectionReference ref;

  ListeningApi(this.path) {
    ref = _db.collection(path);
  }

  Future<QuerySnapshot> getDataCollection() {
    return ref.get();
  }

  Stream<QuerySnapshot> streamDataCollection() {
    return ref.snapshots();
  }

  Future<DocumentSnapshot> getDocumentById(String id) {
    return ref.doc(id).get();
  }

  Future<void> removeDocument(String id) {
    return ref.doc(id).delete();
  }

  Future<DocumentReference> addDocument(Map data) {
    return ref.add(data);
  }

  Future<void> updateDocument(var data, String id) {
    return ref.doc(id).update(data);
  }
}
