import 'package:hive/hive.dart';
import './hive_model.dart';

Future<void> addBook(Book book) async {
  await Hive.openBox("bookBox");
  final box = Hive.box("bookBox");
  await box.add(book);
  await box.close();
}

Future<void> deleteBook(int index) async {
  
  await Hive.openBox("bookBox");
  final box = Hive.box("bookBox");
  await box.deleteAt(index);
  await box.close();
}

Future<int> getAllBook() async {
  int index = 0;
  await Hive.openBox("bookBox");
  final box = Hive.box("bookBox");
  final data = box.values;

  for (var item in data) {
    print(
      index.toString() +
          "-) " +
          item.name +
          " " +
          item.author +
          " " +
          item.printDate.toString(),
    );
    index++;
  }

  await box.close();
  return index;
}
