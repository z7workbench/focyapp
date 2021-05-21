import 'package:focyapp/data_structs.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FocySqlHelper {
  late Database _database;
  var name = "focy.db";
  var focyTable = "FocyRecord";
  var focyBook = "FocyBook";

  initDatabase() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, name);
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''create table $focyBook (
      id integer primary key,
      title text,
      description text
      )''');
      await db.insert(
          focyBook, FocyBook(title: "Default", description: "").toMap());
    });
  }
}
