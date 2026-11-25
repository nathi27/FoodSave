import 'package:collection/collection.dart';

enum Catergorias {
  Almuerzos,
  Desayunos,
  Pan,
  Postres,
  Vegetales,
  Carnes,
  Lacteos,
}

enum Estado {
  Activo,
  Agotado,
  NoDisponible,
  Vencido,
}

enum EstadoReserva {
  Pendiente,
  ListoParaRetiro,
  Retirado,
  Cancelado,
}

enum TipoNotificacion {
  confirmacionReserva,
  recordatorioRetiro,
  nuevaReserva,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Catergorias):
      return Catergorias.values.deserialize(value) as T?;
    case (Estado):
      return Estado.values.deserialize(value) as T?;
    case (EstadoReserva):
      return EstadoReserva.values.deserialize(value) as T?;
    case (TipoNotificacion):
      return TipoNotificacion.values.deserialize(value) as T?;
    default:
      return null;
  }
}
