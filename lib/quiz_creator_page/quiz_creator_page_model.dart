import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizCreatorPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for question widget.
  TextEditingController? questionController;
  String? Function(BuildContext, String?)? questionControllerValidator;
  // State field(s) for optionA widget.
  TextEditingController? optionAController;
  String? Function(BuildContext, String?)? optionAControllerValidator;
  // State field(s) for optionB widget.
  TextEditingController? optionBController;
  String? Function(BuildContext, String?)? optionBControllerValidator;
  // State field(s) for optionC widget.
  TextEditingController? optionCController;
  String? Function(BuildContext, String?)? optionCControllerValidator;
  // State field(s) for optionD widget.
  TextEditingController? optionDController;
  String? Function(BuildContext, String?)? optionDControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    questionController?.dispose();
    optionAController?.dispose();
    optionBController?.dispose();
    optionCController?.dispose();
    optionDController?.dispose();
    textController6?.dispose();
  }

  /// Additional helper methods are added here.

}
