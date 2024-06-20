import 'package:sqflite_common/sqlite_api.dart';
import 'package:todo_provider/app/core/database/migrations/migration.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
    create table todo(
     id integer primary key autoincrement,
     description varchar(500) not null,
     dateTime datetime,
     finished integer
    )
    ''');
  }

  @override
  void update(Batch batch) {

  }

}