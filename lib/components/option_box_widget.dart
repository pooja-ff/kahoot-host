import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'option_box_model.dart';
export 'option_box_model.dart';

class OptionBoxWidget extends StatefulWidget {
  const OptionBoxWidget({
    Key? key,
    this.index,
    this.label,
  }) : super(key: key);

  final int? index;
  final String? label;

  @override
  _OptionBoxWidgetState createState() => _OptionBoxWidgetState();
}

class _OptionBoxWidgetState extends State<OptionBoxWidget> {
  late OptionBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: () {
          if (widget.index == 0) {
            return Color(0xFFFF1E1E);
          } else if (widget.index == 1) {
            return Color(0xFF2A5FFF);
          } else if (widget.index == 2) {
            return Color(0xFF2FEC3A);
          } else {
            return Color(0xFFE3FF38);
          }
        }(),
      ),
      child: Text(
        widget.label!,
        style: FlutterFlowTheme.of(context).bodyMedium,
      ),
    );
  }
}
