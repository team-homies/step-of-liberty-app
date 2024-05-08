import '/component/rank_card/rank_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rank_tab_widget.dart' show RankTabWidget;
import 'package:flutter/material.dart';

class RankTabModel extends FlutterFlowModel<RankTabWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RankCard component.
  late RankCardModel rankCardModel1;
  // Model for RankCard component.
  late RankCardModel rankCardModel2;
  // Model for RankCard component.
  late RankCardModel rankCardModel3;

  @override
  void initState(BuildContext context) {
    rankCardModel1 = createModel(context, () => RankCardModel());
    rankCardModel2 = createModel(context, () => RankCardModel());
    rankCardModel3 = createModel(context, () => RankCardModel());
  }

  @override
  void dispose() {
    rankCardModel1.dispose();
    rankCardModel2.dispose();
    rankCardModel3.dispose();
  }
}
