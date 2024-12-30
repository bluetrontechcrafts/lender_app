import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:realm/realm.dart';
import 'schema.dart';

class RepoDefaultOptions {
  final FirebaseOptions? firebaseOptions;

  RepoDefaultOptions({this.firebaseOptions});
}

class DataRepository {
  late Realm realm;
  late FirebaseApp app;

  final config = Configuration.local([
    CustomerRawData.schema,
    LineRawData.schema,
    LoanRawData.schema,
    RepaymentRawData.schema,
  ]);

  // Private constructor to prevent external instantiation.
  DataRepository._() {
    realm = Realm(config);
  }

  // The single instance of the class.
  static final DataRepository _instance = DataRepository._();

  // Factory constructor to provide access to the singleton instance.
  factory DataRepository() {
    return _instance;
  }

  RealmResults<LineRawData> _lines() => realm.all<LineRawData>();
  RealmResults<CustomerRawData> _customers() => realm.all<CustomerRawData>();
  RealmResults<LoanRawData> _loans() => realm.all<LoanRawData>();
  RealmResults<RepaymentRawData> _repayments() => realm.all<RepaymentRawData>();

  Future<void> initializeDefault(RepoDefaultOptions options) async {
    app = await Firebase.initializeApp(
      options: options.firebaseOptions,
    );
    debugPrint('Initialized app: $app');
  }
}
