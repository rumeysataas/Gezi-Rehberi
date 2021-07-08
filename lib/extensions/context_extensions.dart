import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/services/auth_service.dart';

//Extensionlar ile kısayollar oluşturabiliriz
// Burada context altından uygulamanın her yerinde kullanabileceğimiz kısayollar oluşturduk
extension ContextExtensions on BuildContext {
  double get phoneWidth => MediaQuery.of(this).size.width;
  double get phoneHeight => MediaQuery.of(this).size.height;
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get accentColor => Theme.of(this).accentColor;
  TextTheme get textTheme => Theme.of(this).textTheme;
  bool get isKeyboardOpen =>
      MediaQuery.of(this).viewInsets.bottom != 0 ? true : false;
  AppUser? get currentUser => AuthService.instance.currentUser;
}
