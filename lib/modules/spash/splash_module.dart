import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/spash/spash_page.dart';
import 'package:app_filmes/modules/spash/splash_bindings.dart';
import 'package:get/get.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    )
  ];
}
