import 'package:realm/realm.dart';

part 'schema.realm.dart';

enum Loantype { flat, simple, reducing, compound }

enum RepaymentFrequency { daily, weekly, monthly }

@RealmModel()
class _LineRawData {
  @PrimaryKey()
  late ObjectId id;
  late String name;
}

@RealmModel()
class _CustomerRawData {
  @PrimaryKey()
  late ObjectId id;
  _LineRawData? line;
  late String firstName;
  String? lastName;
  late String gender;
  late String phone;
  late String status;
}

@RealmModel()
class _LoanRawData {
  @PrimaryKey()
  late ObjectId id;
  _CustomerRawData? customer;
  late String type;
  late String name;
  late double amount;
  late double interestAmount;
  late int cycleCount;
  late String frequency;
}

@RealmModel()
class _RepaymentRawData {
  @PrimaryKey()
  late ObjectId id;
  _LoanRawData? loan;
  late int cycle;
  late double billAmount;
  late double paidAmount;
  late double balanceAmount;
  String? reference;
  String? notes;
}
