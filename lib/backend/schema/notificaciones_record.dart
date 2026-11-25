import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacionesRecord extends FirestoreRecord {
  NotificacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "destinatarioRef" field.
  DocumentReference? _destinatarioRef;
  DocumentReference? get destinatarioRef => _destinatarioRef;
  bool hasDestinatarioRef() => _destinatarioRef != null;

  // "tipoNotificacion" field.
  TipoNotificacion? _tipoNotificacion;
  TipoNotificacion? get tipoNotificacion => _tipoNotificacion;
  bool hasTipoNotificacion() => _tipoNotificacion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "reservaRef" field.
  DocumentReference? _reservaRef;
  DocumentReference? get reservaRef => _reservaRef;
  bool hasReservaRef() => _reservaRef != null;

  // "excendenteRef" field.
  DocumentReference? _excendenteRef;
  DocumentReference? get excendenteRef => _excendenteRef;
  bool hasExcendenteRef() => _excendenteRef != null;

  // "leida" field.
  bool? _leida;
  bool get leida => _leida ?? false;
  bool hasLeida() => _leida != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _destinatarioRef = snapshotData['destinatarioRef'] as DocumentReference?;
    _tipoNotificacion = snapshotData['tipoNotificacion'] is TipoNotificacion
        ? snapshotData['tipoNotificacion']
        : deserializeEnum<TipoNotificacion>(snapshotData['tipoNotificacion']);
    _titulo = snapshotData['titulo'] as String?;
    _mensaje = snapshotData['mensaje'] as String?;
    _reservaRef = snapshotData['reservaRef'] as DocumentReference?;
    _excendenteRef = snapshotData['excendenteRef'] as DocumentReference?;
    _leida = snapshotData['leida'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificaciones');

  static Stream<NotificacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacionesRecord.fromSnapshot(s));

  static Future<NotificacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacionesRecord.fromSnapshot(s));

  static NotificacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacionesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createNotificacionesRecordData({
  DocumentReference? destinatarioRef,
  TipoNotificacion? tipoNotificacion,
  String? titulo,
  String? mensaje,
  DocumentReference? reservaRef,
  DocumentReference? excendenteRef,
  bool? leida,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'destinatarioRef': destinatarioRef,
      'tipoNotificacion': tipoNotificacion,
      'titulo': titulo,
      'mensaje': mensaje,
      'reservaRef': reservaRef,
      'excendenteRef': excendenteRef,
      'leida': leida,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacionesRecordDocumentEquality
    implements Equality<NotificacionesRecord> {
  const NotificacionesRecordDocumentEquality();

  @override
  bool equals(NotificacionesRecord? e1, NotificacionesRecord? e2) {
    return e1?.destinatarioRef == e2?.destinatarioRef &&
        e1?.tipoNotificacion == e2?.tipoNotificacion &&
        e1?.titulo == e2?.titulo &&
        e1?.mensaje == e2?.mensaje &&
        e1?.reservaRef == e2?.reservaRef &&
        e1?.excendenteRef == e2?.excendenteRef &&
        e1?.leida == e2?.leida &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(NotificacionesRecord? e) => const ListEquality().hash([
        e?.destinatarioRef,
        e?.tipoNotificacion,
        e?.titulo,
        e?.mensaje,
        e?.reservaRef,
        e?.excendenteRef,
        e?.leida,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificacionesRecord;
}
