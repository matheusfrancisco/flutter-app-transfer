import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:flutter/cupertino.dart';

class AppDependencies extends InheritedWidget {
  AppDependencies({@required this.contactDao, @required Widget child})
      : super(child: child);

  final ContactDao contactDao;

  @override
  bool updateShouldNotify(AppDependencies oldWidget) {
    return contactDao != oldWidget.contactDao;
  }

  static AppDependencies of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppDependencies>();
  }

}
