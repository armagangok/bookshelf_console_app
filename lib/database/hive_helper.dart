import 'package:hive/hive.dart';
import './hive_model.dart';

Future<void> addBook(Book book) async {
  final box = Hive.box("box");
  await box.add(book);
}

Future<void> deleteBook(int index) async {
  final box = Hive.box("box");
  await box.deleteAt(index);
}

Future<void> getAllBook() async {
  final box = Hive.box("box");
  final data = box.values;

  print(data);
  // for (var item in data) {
  //   print(item);
  //   // print(item.name + " " + item.author + " " + item.printDate);
  // }
}
