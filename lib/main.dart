import 'package:catalog/core/store.dart';
import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/home_details_page.dart';
import 'package:catalog/pages/home_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (_, __) => MaterialPage(child: LoginPage()),
          MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
          MyRoutes.homeDetailsRoute: (_, params) {
            return MaterialPage(
                child: HomeDetailPage(
              catalog: params,
            ));
          },
          MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
          MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
        },
      ),
      // initialRoute: MyRoutes.homeRoute,
      // routes: {
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      //   MyRoutes.cartRoute: (context) => CartPage(),
      // },
    );
  }
}
