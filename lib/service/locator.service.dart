import 'package:get_it/get_it.dart';
import 'user.service.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<UserService>(() => UserService());
}