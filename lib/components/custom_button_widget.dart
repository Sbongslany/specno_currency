import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_button_model.dart';
export 'custom_button_model.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  late CustomButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 46.0,
        decoration: BoxDecoration(
          color: _model.color,
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          valueOrDefault<String>(
            _model.title,
            '-',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                fontSize: 22.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
