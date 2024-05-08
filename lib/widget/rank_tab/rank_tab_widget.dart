import '/component/rank_card/rank_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'rank_tab_model.dart';
export 'rank_tab_model.dart';

class RankTabWidget extends StatefulWidget {
  const RankTabWidget({super.key});

  @override
  State<RankTabWidget> createState() => _RankTabWidgetState();
}

class _RankTabWidgetState extends State<RankTabWidget> {
  late RankTabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankTabModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 80.0,
              decoration: const BoxDecoration(),
              child: wrapWithModel(
                model: _model.rankCardModel1,
                updateCallback: () => setState(() {}),
                child: const RankCardWidget(),
              ),
            ),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(),
              child: wrapWithModel(
                model: _model.rankCardModel2,
                updateCallback: () => setState(() {}),
                child: const RankCardWidget(),
              ),
            ),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(),
              child: wrapWithModel(
                model: _model.rankCardModel3,
                updateCallback: () => setState(() {}),
                child: const RankCardWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
