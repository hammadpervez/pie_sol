import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pie_solution/view/detail/detail.dart';
import 'package:pie_solution/view/home/home.dart';

class Routes {
  static const main = "/";
  static const detail = "/detail";

  static Route<dynamic> routeGenerate(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return GetPageRoute(page: () => Home());
        break;
      case detail:
        return GetPageRoute(
            page: () => DetailView(
                  index: settings.arguments,
                ));
        break;
      default:
        return GetPageRoute(page: () => Home());
    }
  }
}
