import 'package:flutter/widgets.dart';
import 'data_repository.dart';

class LenderProvider extends InheritedWidget {
  const LenderProvider({
    super.key,
    required this.repo,
    required super.child,
  });

  final DataRepository repo;

  static LenderProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LenderProvider>();
  }

  static LenderProvider of(BuildContext context) {
    final LenderProvider? result = maybeOf(context);
    assert(result != null, 'No LenderProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(LenderProvider oldWidget) => false;
}

