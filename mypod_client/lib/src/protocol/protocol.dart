/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'company.dart' as _i2;
import 'example.dart' as _i3;
import 'todo.dart' as _i4;
import 'package:mypod_client/src/protocol/company.dart' as _i5;
import 'package:mypod_client/src/protocol/todo.dart' as _i6;
export 'company.dart';
export 'example.dart';
export 'todo.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Company) {
      return _i2.Company.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Todo) {
      return _i4.Todo.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Company?>()) {
      return (data != null ? _i2.Company.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Todo?>()) {
      return (data != null ? _i4.Todo.fromJson(data, this) : null) as T;
    }
    if (t == List<_i5.Company>) {
      return (data as List).map((e) => deserialize<_i5.Company>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Todo>) {
      return (data as List).map((e) => deserialize<_i6.Todo>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Company) {
      return 'Company';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Todo) {
      return 'Todo';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Company') {
      return deserialize<_i2.Company>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Todo') {
      return deserialize<_i4.Todo>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
