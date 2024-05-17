import 'package:flutter/material.dart';

class AuthService {
  
  static final AuthService _singleton = AuthService._internal();

  factory AuthService () {
    return _singleton;
  }

  AuthService._internal();
}