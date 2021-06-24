import 'package:flutter/material.dart';
import 'package:flutter_getx_middleware/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SecondMiddleware extends GetMiddleware {
  @override
  int? get priority => 4;

  bool isProfileSet = false;

  @override
  RouteSettings? redirect(String? route) {
    if (isProfileSet == false) {
      return RouteSettings(name: Routes.PROFILE);
    }
  }


}
