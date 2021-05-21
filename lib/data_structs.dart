class FocyRecord {
  late int id;
  late String title;
  late double price;
  late RecordType type;
  late String description;
  late int time;
  late int bookId;
  late int account;
  late int purpose;

  FocyRecord(
      {this.id = 0,
      required this.title,
      required this.price,
      required this.type,
      required this.description,
      required this.time,
      required this.bookId,
      required this.account,
      required this.purpose});
}

class RecordPurpose {
  int id;
  String title;
  String color;
  String description;

  RecordPurpose(
      {this.id = 0,
      required this.title,
      required this.color,
      required this.description});
}

class SubRecordPurpose {
  int id;
  String title;
  int mainPurpose;
  String description;

  SubRecordPurpose(
      {this.id = 0,
      required this.title,
      required this.mainPurpose,
      required this.description});
}

class FocyBook {
  int id;
  String title;
  String description;

  FocyBook({this.id = 0, required this.title, required this.description});
  Map<String, Object> toMap() =>
      {"id": id, "title": title, "description": description};
}

class Account {
  int id;
  String title;
  String color;
  String description;

  Account(
      {this.id = 0,
      required this.title,
      required this.color,
      required this.description});
}

enum RecordType { money_in, money_out, loan_in, loan_out }
