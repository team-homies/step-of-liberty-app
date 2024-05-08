import '/component/map_description/map_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'map_tap_model.dart';
export 'map_tap_model.dart';

class MapTapWidget extends StatefulWidget {
  const MapTapWidget({super.key});

  @override
  State<MapTapWidget> createState() => _MapTapWidgetState();
}

class _MapTapWidgetState extends State<MapTapWidget> {
  late MapTapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapTapModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            height: 200.0,
            decoration: const BoxDecoration(),
            child: const FlutterFlowWebView(
              content:
                  '<html>\n<head>\n<script type=\"text/javascript\" src=\"https://map.vworld.kr/js/vworldMapInit.js.do?version=2.0&apiKey=5E69E1CE-B173-3F10-8221-3FD8A149CCC8\"></script>\n</head>\n<body>\n<script>\n\t\tvar map;\n\t\tvar mapController;\n\t\t\n\t\tvw.MapControllerOption = {\n\t\t\tcontainer : \"vmap\",\n\t\t\tmapMode : \"2d-map\",\n\t\t\tbasemapType : vw.ol3.BasemapType.GRAPHIC,\n\t\t\tcontrolDensity : vw.ol3.DensityType.BASIC,\n\t\t\tinteractionDensity : vw.ol3.DensityType.BASIC,\n\t\t\tcontrolsAutoArrange : true,\n\t\t\thomePosition : vw.ol3.CameraPosition,\n\t\t\tinitPosition : vw.ol3.CameraPosition,\n\t\t};\n\t\tmapController = new vw.MapController(vw.MapControllerOption);\n\t\t//mapController.setMode(\"3d-map\");\n\t\t\n\t\t\n\t\tfunction changeMode(mode){\n\t\t\tmapController.setMode(mode);\n\t\t\tif(mode == \'3d-map\'){\n\t\t\t\tmap = mapController.Map3D;\n\t\t\t}else{\n\t\t\t\tvw._vmap = mapController.Map2D;\n\t\t\t}\n\t\t}\n\t\t\n\t\t\n\t</script>\n</body>\n</html>',
              height: 100.0,
              verticalScroll: false,
              horizontalScroll: false,
              html: true,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.mapDescriptionModel,
                updateCallback: () => setState(() {}),
                child: const MapDescriptionWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
