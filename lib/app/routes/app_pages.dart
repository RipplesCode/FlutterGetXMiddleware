import 'package:flutter_getx_middleware/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_middleware/app/modules/home/middleware/first_middleware.dart';
import 'package:flutter_getx_middleware/app/modules/home/middleware/second_middleware.dart';
import 'package:flutter_getx_middleware/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_middleware/app/modules/home/views/login_view.dart';
import 'package:flutter_getx_middleware/app/modules/home/views/profile_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        middlewares: [FirstMiddleware(), SecondMiddleware()]),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
    ),
  ];
}
