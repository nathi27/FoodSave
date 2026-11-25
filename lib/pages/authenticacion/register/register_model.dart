import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cuenta widget.
  FocusNode? cuentaFocusNode;
  TextEditingController? cuentaTextController;
  String? Function(BuildContext, String?)? cuentaTextControllerValidator;
  String? _cuentaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El tipo de cuenta es obligatorio.';
    }

    return null;
  }

  // State field(s) for nombreUsuario widget.
  FocusNode? nombreUsuarioFocusNode;
  TextEditingController? nombreUsuarioTextController;
  String? Function(BuildContext, String?)? nombreUsuarioTextControllerValidator;
  String? _nombreUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese su nombre completo.';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese un correo electrónico válido.';
    }

    return null;
  }

  // State field(s) for password widget.
  late FocusNode passwordPasswordVisibilityFocusNode;
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese una contraseña.';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese su número de teléfono.';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for nombreComercio widget.
  FocusNode? nombreComercioFocusNode;
  TextEditingController? nombreComercioTextController;
  String? Function(BuildContext, String?)?
      nombreComercioTextControllerValidator;
  String? _nombreComercioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese el nombre del establecimiento.';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  String? _direccionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '\tIngrese la dirección del establecimiento.';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cuentaTextControllerValidator = _cuentaTextControllerValidator;
    nombreUsuarioTextControllerValidator =
        _nombreUsuarioTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordPasswordVisibilityFocusNode = FocusNode();
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    nombreComercioTextControllerValidator =
        _nombreComercioTextControllerValidator;
    direccionTextControllerValidator = _direccionTextControllerValidator;
  }

  @override
  void dispose() {
    cuentaFocusNode?.dispose();
    cuentaTextController?.dispose();

    nombreUsuarioFocusNode?.dispose();
    nombreUsuarioTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
    passwordPasswordVisibilityFocusNode.dispose();
    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    nombreComercioFocusNode?.dispose();
    nombreComercioTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();
  }
}
