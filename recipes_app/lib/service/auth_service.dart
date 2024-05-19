import 'package:recipes_app/service/http_service.dart';

class AuthService {
  static final AuthService _singleton = AuthService._internal();

  final _httpService = HTTPService();

  factory AuthService() {
    return _singleton;
  }

  AuthService._internal();

  Future<bool> login(String username, String password) async {
    try {
      var response = await _httpService.post("auth/login", {
        "username": username,
        "password": password,
      });
      //print(response?.statusCode);
      if (response?.statusCode == 200 && response?.data != null) {
        print(response!.data);
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
