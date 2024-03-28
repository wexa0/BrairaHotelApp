import '/flutter_flow/flutter_flow_util.dart';
import 'sign_u_p_widget.dart' show SignUPWidget;
import 'package:flutter/material.dart';

class SignUPModel extends FlutterFlowModel<SignUPWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FN widget.
  FocusNode? fnFocusNode;
  TextEditingController? fnController;
  String? Function(BuildContext, String?)? fnControllerValidator;
  // State field(s) for LN widget.
  FocusNode? lnFocusNode;
  TextEditingController? lnController;
  String? Function(BuildContext, String?)? lnControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fnFocusNode?.dispose();
    fnController?.dispose();

    lnFocusNode?.dispose();
    lnController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }
}
