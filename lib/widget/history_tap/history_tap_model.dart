import '/flutter_flow/flutter_flow_util.dart';
import 'history_tap_widget.dart' show HistoryTapWidget;
import 'package:flutter/material.dart';

class HistoryTapModel extends FlutterFlowModel<HistoryTapWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
