import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:object_detector/controller/scan_controller.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<ScanController>(
            init: ScanController(),
            builder: (controller) {
              return controller.isCameraInitialized.value
                  ? CameraPreview(controller.cameraController)
                  : const Text("Loading Preview...");
            }));
  }
}
