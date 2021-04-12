import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FocySqlHelper {
  Database _database;
  var name = "focy.db";
  var focyTable = "FocyRecord";

  initDatabase() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, name);
    _database = await openDatabase(path, version: 1, 
    onCreate: (Database db, int version) async {
      await db.execute('''create table $focyTable (
      id integer primary key,
      title text,
      in_or_out text, 
      price real,
      description text
      )''');
    });
  }
}