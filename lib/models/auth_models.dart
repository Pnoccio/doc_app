import 'package:flutter/material.dart';

class AuthModels extends ChangeNotifier {
  bool _isLogin = false;

  bool get isLogin {
    return _isLogin;
  }

  // when the login success, update the status
  void loginSuccess() {
    _isLogin = true;
    notifyListeners();
  }
}
