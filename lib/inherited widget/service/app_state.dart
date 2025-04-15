import 'package:flutter/widgets.dart';

class AppState extends InheritedWidget {
  final int count;
  final Function increment;
  final Function decrement;

  const AppState({
    super.key,
    required this.count,
    required this.increment,
    required this.decrement,
    required Widget child,
  }) : super(child: child);

  static AppState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppState>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}