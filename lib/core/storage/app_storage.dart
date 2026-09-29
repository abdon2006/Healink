import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  final SharedPreferences sharedPreferences;
  final FlutterSecureStorage secureStorage;

  AppStorage({required this.sharedPreferences, required this.secureStorage});

  Future<void> saveToken(String token) async {
    await secureStorage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: 'token');
  }

  Future<void> deleteToken() async {
    await secureStorage.delete(key: 'token');
  }
}
