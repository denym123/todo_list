import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';

class SqliteConnectionFactory {
  static const _version = 1;
  static const _databaseName = "TODO_LIST_PROVIDER";
  Database? _database;

  static SqliteConnectionFactory? _instance;
  final _lock = Lock();

  SqliteConnectionFactory._();

  factory SqliteConnectionFactory() {
    _instance ??= SqliteConnectionFactory();
    return _instance!;
  }

  Future<Database> openConnection() async {
    var databasePath = await getDatabasesPath();
    var dataBasePathFinal = join(databasePath, _databaseName);

    await _lock.synchronized(() async {
      _database ??= await openDatabase(
        dataBasePathFinal,
        version: _version,
        onConfigure: _onConfigure,
        onCreate: _onCreate,
        onDowngrade: _onDownGrade,
        onUpgrade: _onUpgrade,
      );
    });
    return _database!;
  }

  void closeConnection(){
    _database?.close();
    _database = null;
  }

  Future<void> _onConfigure(Database db) async{
    db.execute("PRAGMA foreign_keys = ON");
  }
  Future<void> _onCreate(Database db, int version)async{}
  Future<void> _onUpgrade(Database db, int oldVersion, int version)async{}
  Future<void> _onDownGrade(Database db, int oldVersion, int version) async {

  }
}
