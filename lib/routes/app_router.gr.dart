// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/bottom_nav/bottom_nav.dart' as _i3;
import '../screens/home/home.dart' as _i4;
import '../screens/today/today.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BottomNav.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.BottomNav();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    TodayRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    Home.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Home();
        }),
    Today.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.Today();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BottomNav.name, path: '/', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(Home.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(TodayRouter.name, path: 'today', children: [
            _i1.RouteConfig(Today.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ])
        ])
      ];
}

class BottomNav extends _i1.PageRouteInfo {
  const BottomNav({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'BottomNav';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class TodayRouter extends _i1.PageRouteInfo {
  const TodayRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'today', initialChildren: children);

  static const String name = 'TodayRouter';
}

class Home extends _i1.PageRouteInfo {
  const Home() : super(name, path: '');

  static const String name = 'Home';
}

class Today extends _i1.PageRouteInfo {
  const Today() : super(name, path: '');

  static const String name = 'Today';
}
