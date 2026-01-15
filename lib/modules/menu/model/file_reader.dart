import 'package:android_x_storage/android_x_storage.dart';
import 'package:flutter/services.dart';

class FileReader {
  final _androidXStoragePlugin = AndroidXStorage();

  String _documentsPath = "empty";
  String _sdcardPath = "empty";

  void init() {
    _documents();
    _sdcard();
  }

  void test() {
    print(_documentsPath);
    print(_sdcardPath);
  }

  Future<void> _documents() async {
    String documents;
    try {
      documents =
          await _androidXStoragePlugin.getDocumentsDirectory() ??
          "no documents";
    } on PlatformException {
      documents = "error";
    }
    _documentsPath = documents;
  }

  Future<void> _sdcard() async {
    String sdcard;
    try {
      sdcard =
          await _androidXStoragePlugin.getSDCardStorageDirectory() ??
          "no sdcard";
    } on PlatformException {
      sdcard = "error";
    }
    _sdcardPath = sdcard;
  }
}
