import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservasRecord extends FirestoreRecord {
  ReservasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "excedenteRef" field.
  DocumentReference? _excedenteRef;
  DocumentReference? get excedenteRef => _excedenteRef;
  bool hasExcedenteRef() => _excedenteRef != null;

  // "consumidorRef" field.
  DocumentReference? _consumidorRef;
  DocumentReference? get consumidorRef => _consumidorRef;
  bool hasConsumidorRef() => _consumidorRef != null;

  // "comercioRef" field.
  DocumentReference? _comercioRef;
  DocumentReference? get comercioRef => _comercioRef;
  bool hasComercioRef() => _comercioRef != null;

  // "nombreProducto" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "comercioNombre" field.
  String? _comercioNombre;
  String get comercioNombre => _comercioNombre ?? '';
  bool hasComercioNombre() => _comercioNombre != null;

  // "consumidorNombre" field.
  String? _consumidorNombre;
  String get consumidorNombre => _consumidorNombre ?? '';
  bool hasConsumidorNombre() => _consumidorNombre != null;

  // "precioUnitario" field.
  double? _precioUnitario;
  double get precioUnitario => _precioUnitario ?? 0.0;
  bool hasPrecioUnitario() => _precioUnitario != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "estadoReserva" field.
  EstadoReserva? _estadoReserva;
  EstadoReserva? get estadoReserva => _estadoReserva;
  bool hasEstadoReserva() => _estadoReserva != null;

  // "horaLimiteRetiro" field.
  DateTime? _horaLimiteRetiro;
  DateTime? get horaLimiteRetiro => _horaLimiteRetiro;
  bool hasHoraLimiteRetiro() => _horaLimiteRetiro != null;

  // "limiteCancelacion" field.
  DateTime? _limiteCancelacion;
  DateTime? get limiteCancelacion => _limiteCancelacion;
  bool hasLimiteCancelacion() => _limiteCancelacion != null;

  // "recordatorioEnviado" field.
  bool? _recordatorioEnviado;
  bool get recordatorioEnviado => _recordatorioEnviado ?? false;
  bool hasRecordatorioEnviado() => _recordatorioEnviado != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "notas" field.
  String? _notas;
  String get notas => _notas ?? '';
  bool hasNotas() => _notas != null;

  void _initializeFields() {
    _excedenteRef = snapshotData['excedenteRef'] as DocumentReference?;
    _consumidorRef = snapshotData['consumidorRef'] as DocumentReference?;
    _comercioRef = snapshotData['comercioRef'] as DocumentReference?;
    _nombreProducto = snapshotData['nombreProducto'] as String?;
    _comercioNombre = snapshotData['comercioNombre'] as String?;
    _consumidorNombre = snapshotData['consumidorNombre'] as String?;
    _precioUnitario = castToType<double>(snapshotData['precioUnitario']);
    _total = castToType<double>(snapshotData['total']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _estadoReserva = snapshotData['estadoReserva'] is EstadoReserva
        ? snapshotData['estadoReserva']
        : deserializeEnum<EstadoReserva>(snapshotData['estadoReserva']);
    _horaLimiteRetiro = snapshotData['horaLimiteRetiro'] as DateTime?;
    _limiteCancelacion = snapshotData['limiteCancelacion'] as DateTime?;
    _recordatorioEnviado = snapshotData['recordatorioEnviado'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _notas = snapshotData['notas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservas');

  static Stream<ReservasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservasRecord.fromSnapshot(s));

  static Future<ReservasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservasRecord.fromSnapshot(s));

  static ReservasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createReservasRecordData({
  DocumentReference? excedenteRef,
  DocumentReference? consumidorRef,
  DocumentReference? comercioRef,
  String? nombreProducto,
  String? comercioNombre,
  String? consumidorNombre,
  double? precioUnitario,
  double? total,
  int? cantidad,
  EstadoReserva? estadoReserva,
  DateTime? horaLimiteRetiro,
  DateTime? limiteCancelacion,
  bool? recordatorioEnviado,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? notas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'excedenteRef': excedenteRef,
      'consumidorRef': consumidorRef,
      'comercioRef': comercioRef,
      'nombreProducto': nombreProducto,
      'comercioNombre': comercioNombre,
      'consumidorNombre': consumidorNombre,
      'precioUnitario': precioUnitario,
      'total': total,
      'cantidad': cantidad,
      'estadoReserva': estadoReserva,
      'horaLimiteRetiro': horaLimiteRetiro,
      'limiteCancelacion': limiteCancelacion,
      'recordatorioEnviado': recordatorioEnviado,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'notas': notas,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservasRecordDocumentEquality implements Equality<ReservasRecord> {
  const ReservasRecordDocumentEquality();

  @override
  bool equals(ReservasRecord? e1, ReservasRecord? e2) {
    return e1?.excedenteRef == e2?.excedenteRef &&
        e1?.consumidorRef == e2?.consumidorRef &&
        e1?.comercioRef == e2?.comercioRef &&
        e1?.nombreProducto == e2?.nombreProducto &&
        e1?.comercioNombre == e2?.comercioNombre &&
        e1?.consumidorNombre == e2?.consumidorNombre &&
        e1?.precioUnitario == e2?.precioUnitario &&
        e1?.total == e2?.total &&
        e1?.cantidad == e2?.cantidad &&
        e1?.estadoReserva == e2?.estadoReserva &&
        e1?.horaLimiteRetiro == e2?.horaLimiteRetiro &&
        e1?.limiteCancelacion == e2?.limiteCancelacion &&
        e1?.recordatorioEnviado == e2?.recordatorioEnviado &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.notas == e2?.notas;
  }

  @override
  int hash(ReservasRecord? e) => const ListEquality().hash([
        e?.excedenteRef,
        e?.consumidorRef,
        e?.comercioRef,
        e?.nombreProducto,
        e?.comercioNombre,
        e?.consumidorNombre,
        e?.precioUnitario,
        e?.total,
        e?.cantidad,
        e?.estadoReserva,
        e?.horaLimiteRetiro,
        e?.limiteCancelacion,
        e?.recordatorioEnviado,
        e?.createdAt,
        e?.updatedAt,
        e?.notas
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservasRecord;
}
