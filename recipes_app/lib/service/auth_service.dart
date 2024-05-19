
class AuthService {
  
  static final AuthService _singleton = AuthService._internal();

  factory AuthService () {
    return _singleton;
  }

  AuthService._internal();

  Future<bool> login(String name, String password) async {
    return false;
  }
}