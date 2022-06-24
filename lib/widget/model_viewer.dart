import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelView extends StatelessWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      backgroundColor: Colors.white,
      src: 'assets/3Dmodel/scene.gltf',
      alt: "F1 2021 McLaren MCL35M",
      ar: true,
      arModes: ['scene-viewer', 'webxr', 'quick-look'],
      autoRotate: true,
      cameraControls: true,
    );
  }
}
