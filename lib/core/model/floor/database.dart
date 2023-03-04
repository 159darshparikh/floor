import 'dart:async';

import 'package:floor/floor.dart';
import 'package:grocery/core/model/profile.dart';
import 'package:grocery/core/model/profile_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 3, entities: [Profile])
abstract class AppDatabase extends FloorDatabase {
  ProfileDao get profileDao;
}
