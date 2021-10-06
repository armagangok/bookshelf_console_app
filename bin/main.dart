import 'dart:io';
import 'package:hive/hive.dart';
import 'package:project/database/hive_model.dart';
import 'package:project/home/home.dart';

void main() async {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(BookAdapter());

  await Hive.openBox('box');

  home();

  // var items = box.values;
  // await box.add(person);
  // for (var item in items) {
  //   print(item.name);
  // }
  // await box.clear();
  // print(box.values);
}
