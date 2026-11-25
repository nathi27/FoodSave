import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'consultar_publicaciones_activas_widget.dart'
    show ConsultarPublicacionesActivasWidget;
import 'package:flutter/material.dart';

class ConsultarPublicacionesActivasModel
    extends FlutterFlowModel<ConsultarPublicacionesActivasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
