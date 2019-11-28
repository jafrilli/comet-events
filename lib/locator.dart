import 'package:get_it/get_it.dart';
import 'core/models/models.dart';
import 'core/services/services.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  // singletons
  //locator.registerLazySingleton(() => Auth());
  // factories
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => LoginModel());
}