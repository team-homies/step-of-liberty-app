import '/component/map_description/map_description_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'map_tap_widget.dart' show MapTapWidget;
import 'package:flutter/material.dart';

class MapTapModel extends FlutterFlowModel<MapTapWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MapDescription component.
  late MapDescriptionModel mapDescriptionModel;

  @override
  void initState(BuildContext context) {
    mapDescriptionModel = createModel(context, () => MapDescriptionModel());
  }

  @override
  void dispose() {
    mapDescriptionModel.dispose();
  }
}
