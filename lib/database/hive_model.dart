import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class Book {
  @HiveField(0)
  String name;

  @HiveField(1)
  String author;

  @HiveField(2)
  int printDate;

  Book({
    required this.name,
    required this.author,
    required this.printDate,
  });
}
