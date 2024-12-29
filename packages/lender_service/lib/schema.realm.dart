// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LineRawData extends _LineRawData
    with RealmEntity, RealmObjectBase, RealmObject {
  LineRawData(
    ObjectId id,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  LineRawData._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<LineRawData>> get changes =>
      RealmObjectBase.getChanges<LineRawData>(this);

  @override
  Stream<RealmObjectChanges<LineRawData>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<LineRawData>(this, keyPaths);

  @override
  LineRawData freeze() => RealmObjectBase.freezeObject<LineRawData>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(LineRawData value) => value.toEJson();
  static LineRawData _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        LineRawData(
          fromEJson(id),
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(LineRawData._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, LineRawData, 'LineRawData', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CustomerRawData extends _CustomerRawData
    with RealmEntity, RealmObjectBase, RealmObject {
  CustomerRawData(
    ObjectId id,
    String firstName,
    String gender,
    String phone,
    String status, {
    LineRawData? line,
    String? lastName,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'line', line);
    RealmObjectBase.set(this, 'firstName', firstName);
    RealmObjectBase.set(this, 'lastName', lastName);
    RealmObjectBase.set(this, 'gender', gender);
    RealmObjectBase.set(this, 'phone', phone);
    RealmObjectBase.set(this, 'status', status);
  }

  CustomerRawData._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  LineRawData? get line =>
      RealmObjectBase.get<LineRawData>(this, 'line') as LineRawData?;
  @override
  set line(covariant LineRawData? value) =>
      RealmObjectBase.set(this, 'line', value);

  @override
  String get firstName =>
      RealmObjectBase.get<String>(this, 'firstName') as String;
  @override
  set firstName(String value) => RealmObjectBase.set(this, 'firstName', value);

  @override
  String? get lastName =>
      RealmObjectBase.get<String>(this, 'lastName') as String?;
  @override
  set lastName(String? value) => RealmObjectBase.set(this, 'lastName', value);

  @override
  String get gender => RealmObjectBase.get<String>(this, 'gender') as String;
  @override
  set gender(String value) => RealmObjectBase.set(this, 'gender', value);

  @override
  String get phone => RealmObjectBase.get<String>(this, 'phone') as String;
  @override
  set phone(String value) => RealmObjectBase.set(this, 'phone', value);

  @override
  String get status => RealmObjectBase.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObjectBase.set(this, 'status', value);

  @override
  Stream<RealmObjectChanges<CustomerRawData>> get changes =>
      RealmObjectBase.getChanges<CustomerRawData>(this);

  @override
  Stream<RealmObjectChanges<CustomerRawData>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CustomerRawData>(this, keyPaths);

  @override
  CustomerRawData freeze() =>
      RealmObjectBase.freezeObject<CustomerRawData>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'line': line.toEJson(),
      'firstName': firstName.toEJson(),
      'lastName': lastName.toEJson(),
      'gender': gender.toEJson(),
      'phone': phone.toEJson(),
      'status': status.toEJson(),
    };
  }

  static EJsonValue _toEJson(CustomerRawData value) => value.toEJson();
  static CustomerRawData _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'firstName': EJsonValue firstName,
        'gender': EJsonValue gender,
        'phone': EJsonValue phone,
        'status': EJsonValue status,
      } =>
        CustomerRawData(
          fromEJson(id),
          fromEJson(firstName),
          fromEJson(gender),
          fromEJson(phone),
          fromEJson(status),
          line: fromEJson(ejson['line']),
          lastName: fromEJson(ejson['lastName']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CustomerRawData._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, CustomerRawData, 'CustomerRawData', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('line', RealmPropertyType.object,
          optional: true, linkTarget: 'LineRawData'),
      SchemaProperty('firstName', RealmPropertyType.string),
      SchemaProperty('lastName', RealmPropertyType.string, optional: true),
      SchemaProperty('gender', RealmPropertyType.string),
      SchemaProperty('phone', RealmPropertyType.string),
      SchemaProperty('status', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class LoanRawData extends _LoanRawData
    with RealmEntity, RealmObjectBase, RealmObject {
  LoanRawData(
    ObjectId id,
    String type,
    String name,
    double amount,
    double interestAmount,
    int cycleCount,
    String frequency, {
    CustomerRawData? customer,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'customer', customer);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'amount', amount);
    RealmObjectBase.set(this, 'interestAmount', interestAmount);
    RealmObjectBase.set(this, 'cycleCount', cycleCount);
    RealmObjectBase.set(this, 'frequency', frequency);
  }

  LoanRawData._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  CustomerRawData? get customer =>
      RealmObjectBase.get<CustomerRawData>(this, 'customer')
          as CustomerRawData?;
  @override
  set customer(covariant CustomerRawData? value) =>
      RealmObjectBase.set(this, 'customer', value);

  @override
  String get type => RealmObjectBase.get<String>(this, 'type') as String;
  @override
  set type(String value) => RealmObjectBase.set(this, 'type', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  double get amount => RealmObjectBase.get<double>(this, 'amount') as double;
  @override
  set amount(double value) => RealmObjectBase.set(this, 'amount', value);

  @override
  double get interestAmount =>
      RealmObjectBase.get<double>(this, 'interestAmount') as double;
  @override
  set interestAmount(double value) =>
      RealmObjectBase.set(this, 'interestAmount', value);

  @override
  int get cycleCount => RealmObjectBase.get<int>(this, 'cycleCount') as int;
  @override
  set cycleCount(int value) => RealmObjectBase.set(this, 'cycleCount', value);

  @override
  String get frequency =>
      RealmObjectBase.get<String>(this, 'frequency') as String;
  @override
  set frequency(String value) => RealmObjectBase.set(this, 'frequency', value);

  @override
  Stream<RealmObjectChanges<LoanRawData>> get changes =>
      RealmObjectBase.getChanges<LoanRawData>(this);

  @override
  Stream<RealmObjectChanges<LoanRawData>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<LoanRawData>(this, keyPaths);

  @override
  LoanRawData freeze() => RealmObjectBase.freezeObject<LoanRawData>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'customer': customer.toEJson(),
      'type': type.toEJson(),
      'name': name.toEJson(),
      'amount': amount.toEJson(),
      'interestAmount': interestAmount.toEJson(),
      'cycleCount': cycleCount.toEJson(),
      'frequency': frequency.toEJson(),
    };
  }

  static EJsonValue _toEJson(LoanRawData value) => value.toEJson();
  static LoanRawData _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'type': EJsonValue type,
        'name': EJsonValue name,
        'amount': EJsonValue amount,
        'interestAmount': EJsonValue interestAmount,
        'cycleCount': EJsonValue cycleCount,
        'frequency': EJsonValue frequency,
      } =>
        LoanRawData(
          fromEJson(id),
          fromEJson(type),
          fromEJson(name),
          fromEJson(amount),
          fromEJson(interestAmount),
          fromEJson(cycleCount),
          fromEJson(frequency),
          customer: fromEJson(ejson['customer']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(LoanRawData._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, LoanRawData, 'LoanRawData', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('customer', RealmPropertyType.object,
          optional: true, linkTarget: 'CustomerRawData'),
      SchemaProperty('type', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('amount', RealmPropertyType.double),
      SchemaProperty('interestAmount', RealmPropertyType.double),
      SchemaProperty('cycleCount', RealmPropertyType.int),
      SchemaProperty('frequency', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class RepaymentRawData extends _RepaymentRawData
    with RealmEntity, RealmObjectBase, RealmObject {
  RepaymentRawData(
    ObjectId id,
    int cycle,
    double billAmount,
    double paidAmount,
    double balanceAmount, {
    LoanRawData? loan,
    String? reference,
    String? notes,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'loan', loan);
    RealmObjectBase.set(this, 'cycle', cycle);
    RealmObjectBase.set(this, 'billAmount', billAmount);
    RealmObjectBase.set(this, 'paidAmount', paidAmount);
    RealmObjectBase.set(this, 'balanceAmount', balanceAmount);
    RealmObjectBase.set(this, 'reference', reference);
    RealmObjectBase.set(this, 'notes', notes);
  }

  RepaymentRawData._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  LoanRawData? get loan =>
      RealmObjectBase.get<LoanRawData>(this, 'loan') as LoanRawData?;
  @override
  set loan(covariant LoanRawData? value) =>
      RealmObjectBase.set(this, 'loan', value);

  @override
  int get cycle => RealmObjectBase.get<int>(this, 'cycle') as int;
  @override
  set cycle(int value) => RealmObjectBase.set(this, 'cycle', value);

  @override
  double get billAmount =>
      RealmObjectBase.get<double>(this, 'billAmount') as double;
  @override
  set billAmount(double value) =>
      RealmObjectBase.set(this, 'billAmount', value);

  @override
  double get paidAmount =>
      RealmObjectBase.get<double>(this, 'paidAmount') as double;
  @override
  set paidAmount(double value) =>
      RealmObjectBase.set(this, 'paidAmount', value);

  @override
  double get balanceAmount =>
      RealmObjectBase.get<double>(this, 'balanceAmount') as double;
  @override
  set balanceAmount(double value) =>
      RealmObjectBase.set(this, 'balanceAmount', value);

  @override
  String? get reference =>
      RealmObjectBase.get<String>(this, 'reference') as String?;
  @override
  set reference(String? value) => RealmObjectBase.set(this, 'reference', value);

  @override
  String? get notes => RealmObjectBase.get<String>(this, 'notes') as String?;
  @override
  set notes(String? value) => RealmObjectBase.set(this, 'notes', value);

  @override
  Stream<RealmObjectChanges<RepaymentRawData>> get changes =>
      RealmObjectBase.getChanges<RepaymentRawData>(this);

  @override
  Stream<RealmObjectChanges<RepaymentRawData>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<RepaymentRawData>(this, keyPaths);

  @override
  RepaymentRawData freeze() =>
      RealmObjectBase.freezeObject<RepaymentRawData>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'loan': loan.toEJson(),
      'cycle': cycle.toEJson(),
      'billAmount': billAmount.toEJson(),
      'paidAmount': paidAmount.toEJson(),
      'balanceAmount': balanceAmount.toEJson(),
      'reference': reference.toEJson(),
      'notes': notes.toEJson(),
    };
  }

  static EJsonValue _toEJson(RepaymentRawData value) => value.toEJson();
  static RepaymentRawData _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'cycle': EJsonValue cycle,
        'billAmount': EJsonValue billAmount,
        'paidAmount': EJsonValue paidAmount,
        'balanceAmount': EJsonValue balanceAmount,
      } =>
        RepaymentRawData(
          fromEJson(id),
          fromEJson(cycle),
          fromEJson(billAmount),
          fromEJson(paidAmount),
          fromEJson(balanceAmount),
          loan: fromEJson(ejson['loan']),
          reference: fromEJson(ejson['reference']),
          notes: fromEJson(ejson['notes']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(RepaymentRawData._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, RepaymentRawData, 'RepaymentRawData', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('loan', RealmPropertyType.object,
          optional: true, linkTarget: 'LoanRawData'),
      SchemaProperty('cycle', RealmPropertyType.int),
      SchemaProperty('billAmount', RealmPropertyType.double),
      SchemaProperty('paidAmount', RealmPropertyType.double),
      SchemaProperty('balanceAmount', RealmPropertyType.double),
      SchemaProperty('reference', RealmPropertyType.string, optional: true),
      SchemaProperty('notes', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
