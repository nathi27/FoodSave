import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'visualizar_excedentes_disponibles_widget.dart'
    show VisualizarExcedentesDisponiblesWidget;
import 'package:flutter/material.dart';

class VisualizarExcedentesDisponiblesModel
    extends FlutterFlowModel<VisualizarExcedentesDisponiblesWidget> {
  ///  Local state fields for this page.

  Catergorias? categoriaSeleccionada;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<ExcedentesRecord> simpleSearchResults1 = [];
  List<ExcedentesRecord> simpleSearchResults2 = [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
