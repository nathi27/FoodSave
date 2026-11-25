import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExcedentesRecord extends FirestoreRecord {
  ExcedentesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comercioRef" field.
  DocumentReference? _comercioRef;
  DocumentReference? get comercioRef => _comercioRef;
  bool hasComercioRef() => _comercioRef != null;

  // "comercioNombre" field.
  String? _comercioNombre;
  String get comercioNombre => _comercioNombre ?? '';
  bool hasComercioNombre() => _comercioNombre != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "categoria" field.
  Catergorias? _categoria;
  Catergorias? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "cantidadInicial" field.
  int? _cantidadInicial;
  int get cantidadInicial => _cantidadInicial ?? 0;
  bool hasCantidadInicial() => _cantidadInicial != null;

  // "cantidadDisponibles" field.
  int? _cantidadDisponibles;
  int get cantidadDisponibles => _cantidadDisponibles ?? 0;
  bool hasCantidadDisponibles() => _cantidadDisponibles != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "precioOriginal" field.
  double? _precioOriginal;
  double get precioOriginal => _precioOriginal ?? 0.0;
  bool hasPrecioOriginal() => _precioOriginal != null;

  // "estado" field.
  Estado? _estado;
  Estado? get estado => _estado;
  bool hasEstado() => _estado != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "fotoURL" field.
  String? _fotoURL;
  String get fotoURL => _fotoURL ?? '';
  bool hasFotoURL() => _fotoURL != null;

  // "horaLimiteRetiro" field.
  DateTime? _horaLimiteRetiro;
  DateTime? get horaLimiteRetiro => _horaLimiteRetiro;
  bool hasHoraLimiteRetiro() => _horaLimiteRetiro != null;

  void _initializeFields() {
    _comercioRef = snapshotData['comercioRef'] as DocumentReference?;
    _comercioNombre = snapshotData['comercioNombre'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _categoria = snapshotData['categoria'] is Catergorias
        ? snapshotData['categoria']
        : deserializeEnum<Catergorias>(snapshotData['categoria']);
    _cantidadInicial = castToType<int>(snapshotData['cantidadInicial']);
    _cantidadDisponibles = castToType<int>(snapshotData['cantidadDisponibles']);
    _precio = castToType<double>(snapshotData['precio']);
    _precioOriginal = castToType<double>(snapshotData['precioOriginal']);
    _estado = snapshotData['estado'] is Estado
        ? snapshotData['estado']
        : deserializeEnum<Estado>(snapshotData['estado']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _fotoURL = snapshotData['fotoURL'] as String?;
    _horaLimiteRetiro = snapshotData['horaLimiteRetiro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('excedentes');

  static Stream<ExcedentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExcedentesRecord.fromSnapshot(s));

  static Future<ExcedentesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExcedentesRecord.fromSnapshot(s));

  static ExcedentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExcedentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExcedentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExcedentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExcedentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExcedentesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createExcedentesRecordData({
  DocumentReference? comercioRef,
  String? comercioNombre,
  String? nombre,
  String? descripcion,
  Catergorias? categoria,
  int? cantidadInicial,
  int? cantidadDisponibles,
  double? precio,
  double? precioOriginal,
  Estado? estado,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? fotoURL,
  DateTime? horaLimiteRetiro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comercioRef': comercioRef,
      'comercioNombre': comercioNombre,
      'nombre': nombre,
      'descripcion': descripcion,
      'categoria': categoria,
      'cantidadInicial': cantidadInicial,
      'cantidadDisponibles': cantidadDisponibles,
      'precio': precio,
      'precioOriginal': precioOriginal,
      'estado': estado,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'fotoURL': fotoURL,
      'horaLimiteRetiro': horaLimiteRetiro,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExcedentesRecordDocumentEquality implements Equality<ExcedentesRecord> {
  const ExcedentesRecordDocumentEquality();

  @override
  bool equals(ExcedentesRecord? e1, ExcedentesRecord? e2) {
    return e1?.comercioRef == e2?.comercioRef &&
        e1?.comercioNombre == e2?.comercioNombre &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.cantidadInicial == e2?.cantidadInicial &&
        e1?.cantidadDisponibles == e2?.cantidadDisponibles &&
        e1?.precio == e2?.precio &&
        e1?.precioOriginal == e2?.precioOriginal &&
        e1?.estado == e2?.estado &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.fotoURL == e2?.fotoURL &&
        e1?.horaLimiteRetiro == e2?.horaLimiteRetiro;
  }

  @override
  int hash(ExcedentesRecord? e) => const ListEquality().hash([
        e?.comercioRef,
        e?.comercioNombre,
        e?.nombre,
        e?.descripcion,
        e?.categoria,
        e?.cantidadInicial,
        e?.cantidadDisponibles,
        e?.precio,
        e?.precioOriginal,
        e?.estado,
        e?.createdAt,
        e?.updatedAt,
        e?.fotoURL,
        e?.horaLimiteRetiro
      ]);

  @override
  bool isValidKey(Object? o) => o is ExcedentesRecord;
}
