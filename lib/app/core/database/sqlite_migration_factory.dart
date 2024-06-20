import 'package:todo_provider/app/core/database/migrations/migration_v1.dart';
import 'package:todo_provider/app/core/database/migrations/migration_v2.dart';

import 'migrations/migration.dart';

class SqliteMigrationFactory {

  Future<List<Migration>> getCreateMigrations(int version) async => [
    MigrationV1(),
    MigrationV2()
  ];

  Future<List<Migration>> getUpgradeMigrations(int version) async {
    var migrations = <Migration>[];
    if(version)
  }


}