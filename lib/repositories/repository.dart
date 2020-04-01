import 'package:todo/repositories/db_connection.dart';
import 'package:sqflite/sqflite.dart';
class Repository{

DBConnection _connection;


Repository(){
  _connection = DBConnection();
}

static Database _database;

Future<Database> get database async{
  if(_database != null) return _database;
  _database= await _connection.setDatabase();
  return _database;
}

save(table, data) async{
  var conn = await database;
  return await conn.insert(table, data);
}

getAll(table) async{
  var conn = await database;
  return await conn.query(table);
}

}