import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    this.color,
    this.textColor,
    this.elevation,
  });

  final String? title;
  final Color? color;
  final Color? textColor;
  final int? elevation;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: widget.title!,
        options: FFButtonOptions(
          width: double.infinity,
          height: 46.0,
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: widget.color,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Readex Pro',
                color: widget.textColor,
                letterSpacing: 0.0,
              ),
          elevation: widget.elevation?.toDouble(),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
