import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComerciosRecord extends FirestoreRecord {
  ComerciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ownerRef" field.
  DocumentReference? _ownerRef;
  DocumentReference? get ownerRef => _ownerRef;
  bool hasOwnerRef() => _ownerRef != null;

  // "nombreComercio" field.
  String? _nombreComercio;
  String get nombreComercio => _nombreComercio ?? '';
  bool hasNombreComercio() => _nombreComercio != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "dirreccion" field.
  String? _dirreccion;
  String get dirreccion => _dirreccion ?? '';
  bool hasDirreccion() => _dirreccion != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "logoURL" field.
  String? _logoURL;
  String get logoURL => _logoURL ?? '';
  bool hasLogoURL() => _logoURL != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _ownerRef = snapshotData['ownerRef'] as DocumentReference?;
    _nombreComercio = snapshotData['nombreComercio'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _dirreccion = snapshotData['dirreccion'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _logoURL = snapshotData['logoURL'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comercios');

  static Stream<ComerciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComerciosRecord.fromSnapshot(s));

  static Future<ComerciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComerciosRecord.fromSnapshot(s));

  static ComerciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComerciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComerciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComerciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComerciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComerciosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createComerciosRecordData({
  DocumentReference? ownerRef,
  String? nombreComercio,
  String? descripcion,
  String? dirreccion,
  String? telefono,
  LatLng? ubicacion,
  String? logoURL,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ownerRef': ownerRef,
      'nombreComercio': nombreComercio,
      'descripcion': descripcion,
      'dirreccion': dirreccion,
      'telefono': telefono,
      'ubicacion': ubicacion,
      'logoURL': logoURL,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComerciosRecordDocumentEquality implements Equality<ComerciosRecord> {
  const ComerciosRecordDocumentEquality();

  @override
  bool equals(ComerciosRecord? e1, ComerciosRecord? e2) {
    return e1?.ownerRef == e2?.ownerRef &&
        e1?.nombreComercio == e2?.nombreComercio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.dirreccion == e2?.dirreccion &&
        e1?.telefono == e2?.telefono &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.logoURL == e2?.logoURL &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ComerciosRecord? e) => const ListEquality().hash([
        e?.ownerRef,
        e?.nombreComercio,
        e?.descripcion,
        e?.dirreccion,
        e?.telefono,
        e?.ubicacion,
        e?.logoURL,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ComerciosRecord;
}
