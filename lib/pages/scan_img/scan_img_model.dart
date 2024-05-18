import '/flutter_flow/flutter_flow_util.dart';
import 'scan_img_widget.dart' show ScanImgWidget;
import 'package:flutter/material.dart';

class ScanImgModel extends FlutterFlowModel<ScanImgWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
