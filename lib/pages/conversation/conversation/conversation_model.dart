import '/backend/api_requests/api_calls.dart';
import '/components/button_widget.dart';
import '/components/top_currency_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'conversation_widget.dart' show ConversationWidget;
import 'package:flutter/material.dart';

class ConversationModel extends FlutterFlowModel<ConversationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topCurrencyCard component.
  late TopCurrencyCardModel topCurrencyCardModel1;
  // Model for topCurrencyCard component.
  late TopCurrencyCardModel topCurrencyCardModel2;
  // Model for topCurrencyCard component.
  late TopCurrencyCardModel topCurrencyCardModel3;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;
  // Stores action output result for [Backend Call - API (GetCurrencyConversion)] action in button widget.
  ApiCallResponse? apiResult5zt;
  // Stores action output result for [Backend Call - API (ConvertCurrency)] action in button widget.
  ApiCallResponse? apiResultf3a;

  @override
  void initState(BuildContext context) {
    topCurrencyCardModel1 = createModel(context, () => TopCurrencyCardModel());
    topCurrencyCardModel2 = createModel(context, () => TopCurrencyCardModel());
    topCurrencyCardModel3 = createModel(context, () => TopCurrencyCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topCurrencyCardModel1.dispose();
    topCurrencyCardModel2.dispose();
    topCurrencyCardModel3.dispose();
    amountFocusNode?.dispose();
    amountController?.dispose();

    buttonModel.dispose();
  }
}
