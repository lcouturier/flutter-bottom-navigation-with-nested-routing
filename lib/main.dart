import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/router.gr.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routing',
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
