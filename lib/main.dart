import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_screens/root/app_root.dart';
import 'package:whats_app_screens/screens/camera_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  cameras = await availableCameras();
  runApp(const AppRoot());
}

