import 'dart:io';

import 'package:android_x_storage/android_x_storage.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;

import '../../../common/stack.dart';

class FileReader {
  final _androidXStoragePlugin = AndroidXStorage();

  late String _documentsPath;
  late String _sdcardPath;
  late Directory _directory;
  Stack<String> _visitedDirectorys = Stack<String>();

  Future<void> init() async {
    await _documents();
    await _sdcard();

    if (_sdcardPath != "error") {
      _directory = Directory(_sdcardPath);
    } else {
      _directory = Directory(_documentsPath);
    }
  }

  Future<void> test() async {
    print("root folder");
    for (var testString in await listContents()) {
      print(testString);
    }
    enterDirectory("test");
    print("test folder");
    for (var testString in await listContents()) {
      print(testString);
    }
  }

  void enterDirectory(String path) {
    _visitedDirectorys.push(_directory.path);
    String fullPath = "${_directory.path}/$path";
    _directory = Directory(fullPath);
  }

  Future<List<String>> listContents() async {
    List<String> contents = [];
    await for (var content in _directory.list()) {
      contents.add(p.relative(content.path, from: _directory.path));
    }
    return contents;
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
