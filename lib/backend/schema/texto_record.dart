import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TextoRecord extends FirestoreRecord {
  TextoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "txtqrcode" field.
  String? _txtqrcode;
  String get txtqrcode => _txtqrcode ?? '';
  bool hasTxtqrcode() => _txtqrcode != null;

  void _initializeFields() {
    _txtqrcode = snapshotData['txtqrcode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('texto');

  static Stream<TextoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TextoRecord.fromSnapshot(s));

  static Future<TextoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TextoRecord.fromSnapshot(s));

  static TextoRecord fromSnapshot(DocumentSnapshot snapshot) => TextoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TextoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TextoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TextoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TextoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTextoRecordData({
  String? txtqrcode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'txtqrcode': txtqrcode,
    }.withoutNulls,
  );

  return firestoreData;
}

class TextoRecordDocumentEquality implements Equality<TextoRecord> {
  const TextoRecordDocumentEquality();

  @override
  bool equals(TextoRecord? e1, TextoRecord? e2) {
    return e1?.txtqrcode == e2?.txtqrcode;
  }

  @override
  int hash(TextoRecord? e) => const ListEquality().hash([e?.txtqrcode]);

  @override
  bool isValidKey(Object? o) => o is TextoRecord;
}
