import 'package:autoroutetrial/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
    );
  }
}
