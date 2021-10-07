import 'dart:io';
import 'package:hive/hive.dart';
import 'package:project/database/hive_model.dart';
import 'package:project/home/home.dart';

void main() async {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(BookAdapter());

  

  home();
}
