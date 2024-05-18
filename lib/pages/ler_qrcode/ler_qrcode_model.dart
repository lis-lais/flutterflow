import '/flutter_flow/flutter_flow_util.dart';
import 'ler_qrcode_widget.dart' show LerQrcodeWidget;
import 'package:flutter/material.dart';

class LerQrcodeModel extends FlutterFlowModel<LerQrcodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var scanValue = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
