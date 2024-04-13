import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'conversation_widget.dart' show ConversationWidget;
import 'package:flutter/material.dart';

class ConversationModel extends FlutterFlowModel<ConversationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel1;
  // Model for button component.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
