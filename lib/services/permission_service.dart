

import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<bool> requestStoragePermission() async {
    bool isGranted = false;

    if (Platform.isAndroid) {
      isGranted = await Permission.manageExternalStorage.isGranted;
    } else {
      isGranted = await Permission.storage.isGranted;
    }

    if (!isGranted) {
      if (Platform.isAndroid) {
        await Permission.manageExternalStorage.request();
      } else {
        await Permission.storage.request();
      }
    }

    return isGranted;
  }
}
