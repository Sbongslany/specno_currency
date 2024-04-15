import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CurrencyRecord extends FirestoreRecord {
  CurrencyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "name_plural" field.
  String? _namePlural;
  String get namePlural => _namePlural ?? '';
  bool hasNamePlural() => _namePlural != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _code = snapshotData['code'] as String?;
    _namePlural = snapshotData['name_plural'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('currency');

  static Stream<CurrencyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CurrencyRecord.fromSnapshot(s));

  static Future<CurrencyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CurrencyRecord.fromSnapshot(s));

  static CurrencyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CurrencyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CurrencyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CurrencyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CurrencyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CurrencyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCurrencyRecordData({
  String? name,
  String? code,
  String? namePlural,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'code': code,
      'name_plural': namePlural,
    }.withoutNulls,
  );

  return firestoreData;
}

class CurrencyRecordDocumentEquality implements Equality<CurrencyRecord> {
  const CurrencyRecordDocumentEquality();

  @override
  bool equals(CurrencyRecord? e1, CurrencyRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.namePlural == e2?.namePlural;
  }

  @override
  int hash(CurrencyRecord? e) =>
      const ListEquality().hash([e?.name, e?.code, e?.namePlural]);

  @override
  bool isValidKey(Object? o) => o is CurrencyRecord;
}
