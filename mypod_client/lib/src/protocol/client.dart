/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:mypod_client/src/protocol/company.dart' as _i3;
import 'package:mypod_client/src/protocol/todo.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointCompany extends _i1.EndpointRef {
  EndpointCompany(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  _i2.Future<void> insertCompany(_i3.Company company) =>
      caller.callServerEndpoint<void>(
        'company',
        'insertCompany',
        {'company': company},
      );

  _i2.Future<List<_i3.Company>> getAllCompanies() =>
      caller.callServerEndpoint<List<_i3.Company>>(
        'company',
        'getAllCompanies',
        {},
      );

  _i2.Future<void> deleteCompany(_i3.Company company) =>
      caller.callServerEndpoint<void>(
        'company',
        'deleteCompany',
        {'company': company},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );

  _i2.Future<int> addNumbers(
    int a,
    int b,
  ) =>
      caller.callServerEndpoint<int>(
        'example',
        'addNumbers',
        {
          'a': a,
          'b': b,
        },
      );

  _i2.Future<int> getJson(
    int a,
    int b,
  ) =>
      caller.callServerEndpoint<int>(
        'example',
        'getJson',
        {
          'a': a,
          'b': b,
        },
      );

  _i2.Future<void> insertCompany(_i3.Company company) =>
      caller.callServerEndpoint<void>(
        'example',
        'insertCompany',
        {'company': company},
      );
}

/// {@category Endpoint}
class EndpointTodo extends _i1.EndpointRef {
  EndpointTodo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'todo';

  _i2.Future<_i4.Todo> create(_i4.Todo todo) =>
      caller.callServerEndpoint<_i4.Todo>(
        'todo',
        'create',
        {'todo': todo},
      );

  _i2.Future<List<_i4.Todo>> read() =>
      caller.callServerEndpoint<List<_i4.Todo>>(
        'todo',
        'read',
        {},
      );

  _i2.Future<bool> update(_i4.Todo todo) => caller.callServerEndpoint<bool>(
        'todo',
        'update',
        {'todo': todo},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    company = EndpointCompany(this);
    example = EndpointExample(this);
    todo = EndpointTodo(this);
    user = EndpointUser(this);
  }

  late final EndpointCompany company;

  late final EndpointExample example;

  late final EndpointTodo todo;

  late final EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'company': company,
        'example': example,
        'todo': todo,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
