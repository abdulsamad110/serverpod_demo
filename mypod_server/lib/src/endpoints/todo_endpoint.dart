import 'package:mypod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TodoEndpoint extends Endpoint {
  Future<Todo> create(Session session, Todo todo) async {
    return await Todo.db.insertRow(session, todo);
  }

  Future<List<Todo>> read(Session session) async {
    return await Todo.db.find(session);
  }

  Future<bool> update(Session session, Todo todo) async {
    await Todo.db.updateRow(session, todo);
    return true;
  }

  // Future<int> delete(Session session, int id) async {
  //   return await Todo.db.deleteRow(session, where: (t) => t.id.equals(id));
  // }
}
