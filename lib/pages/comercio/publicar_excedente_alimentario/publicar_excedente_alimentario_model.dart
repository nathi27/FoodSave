import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'publicar_excedente_alimentario_widget.dart'
    show PublicarExcedenteAlimentarioWidget;
import 'package:flutter/material.dart';

class PublicarExcedenteAlimentarioModel
    extends FlutterFlowModel<PublicarExcedenteAlimentarioWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_fotoProducto = false;
  FFUploadedFile uploadedLocalFile_fotoProducto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_fotoProducto = '';

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for txtHoraRetiro widget.
  FocusNode? txtHoraRetiroFocusNode;
  TextEditingController? txtHoraRetiroTextController;
  String? Function(BuildContext, String?)? txtHoraRetiroTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Firestore Query - Query a collection] action in ButtonPublicarExcedente widget.
  ComerciosRecord? comercioActual;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtHoraRetiroFocusNode?.dispose();
    txtHoraRetiroTextController?.dispose();
  }
}
