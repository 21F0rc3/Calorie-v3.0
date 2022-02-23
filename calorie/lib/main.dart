import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/bindings/home_bindings.dart';
import 'app/routes/app_pages.dart';

import 'app/ui/android/home_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.INITIAL, //Rota inicial
        initialBinding: HomeBinding(), // dependencias iniciais
        theme: appThemeData, //Tema personalizado app
        defaultTransition: Transition.fade, // Transição de telas padrão
        getPages: AppPages.routes, // Seu array de navegação contendo as rotas e suas pages
        home: HomePage(), // Page inicial
        locale: Locale('pt', 'BR'), // Língua padrão
    )
  );
}