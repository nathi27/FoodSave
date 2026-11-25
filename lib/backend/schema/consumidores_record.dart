import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsumidoresRecord extends FirestoreRecord {
  ConsumidoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consumidores');

  static Stream<ConsumidoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsumidoresRecord.fromSnapshot(s));

  static Future<ConsumidoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsumidoresRecord.fromSnapshot(s));

  static ConsumidoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsumidoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsumidoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsumidoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsumidoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsumidoresRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createConsumidoresRecordData({
  DocumentReference? userRef,
  String? nombreCompleto,
  String? telefono,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'nombreCompleto': nombreCompleto,
      'telefono': telefono,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsumidoresRecordDocumentEquality
    implements Equality<ConsumidoresRecord> {
  const ConsumidoresRecordDocumentEquality();

  @override
  bool equals(ConsumidoresRecord? e1, ConsumidoresRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.telefono == e2?.telefono &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ConsumidoresRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.nombreCompleto, e?.telefono, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ConsumidoresRecord;
}
