class FocyRecord{
  int id;
  String title;
  double price;
  RecordType type;
  String description;
  int time;
  int bookId;
  int account;
  int purpose;
}

class RecordPurpose{
  int id;
  String title;
  String color;
  String description;
}

class SubRecordPurpose{
  int id;
  String title;
  int mainPurpose;
  String description;
}

class FocyBook{
  int id;
  String title;
  String description;
  FocyBook(int id, String title, String desc){
    this.id = id;
    this.title = title;
    this.description = desc;
  }

  Map<String, Object> toMap() => {
    "id": id,
    "title": title,
    "description": description
  };
}

class Account{
  int id;
  String title;
  String color;
  String description;
}

enum RecordType {
  money_in, money_out, loan_in, loan_out
}