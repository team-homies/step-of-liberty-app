import '/flutter_flow/flutter_flow_util.dart';
import '/widget/history_tap/history_tap_widget.dart';
import '/widget/map_tap/map_tap_widget.dart';
import '/widget/rank_tab/rank_tab_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for MapTap component.
  late MapTapModel mapTapModel;
  // Model for RankTab component.
  late RankTabModel rankTabModel;
  // Model for HistoryTap component.
  late HistoryTapModel historyTapModel;

  @override
  void initState(BuildContext context) {
    mapTapModel = createModel(context, () => MapTapModel());
    rankTabModel = createModel(context, () => RankTabModel());
    historyTapModel = createModel(context, () => HistoryTapModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    mapTapModel.dispose();
    rankTabModel.dispose();
    historyTapModel.dispose();
  }
}
