import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutterperu/main.dart';
import 'package:flutterperu/test.dart';
import 'package:flutterperu/david.dart';

class RouteConstants {
  static const String homeRouteName = '/home/';
  static const String joseRouteName = '/jose/';
  static const String jeremyRouteName = '/jeremy/';
  static const String carlosRouteName = '/carlos/';
  static const String davidRouteName = '/david/';
}

class MyRouter {
  MyRouter();

  GoRouter getRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: RouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(child: MyHomePage(title: 'Hello'));
          },
        ),
        GoRoute(
          name: RouteConstants.joseRouteName,
          path: '/jose',
          pageBuilder: (context, state) {
            return MaterialPage(child: TestPage());
          },
        ),
        GoRoute(
          name: RouteConstants.jeremyRouteName,
          path: '/jeremy',
          pageBuilder: (context, state) {
            return MaterialPage(child: TestPage());
          },
        ),
        GoRoute(
          name: RouteConstants.carlosRouteName,
          path: '/carlos',
          pageBuilder: (context, state) {
            return MaterialPage(child: TestPage());
          },
        ),
        GoRoute(
          name: RouteConstants.davidRouteName,
          path: '/david',
          pageBuilder: (context, state) {
            return MaterialPage(child: TestDavid());
          },
        ),
      ],
    );
    return router;
  }
}
