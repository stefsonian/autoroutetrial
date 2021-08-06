// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/bottom_nav/bottom_nav.dart' as _i3;
import '../screens/home/home.dart' as _i5;
import '../screens/today/expense_detail.dart' as _i4;
import '../screens/today/today.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.BottomNav();
        }),
    ExpenseDetailRouterFullScreen.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<ExpenseDetailRouterFullScreenArgs>(
                  orElse: () => ExpenseDetailRouterFullScreenArgs(
                      expenseId: pathParams.optString('expenseId')));
              return _i4.ExpenseDetail(
                  key: args.key,
                  expenseId: args.expenseId,
                  amount: args.amount);
            },
            fullscreenDialog: true),
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
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.Home();
        }),
    TodayRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.Today();
        }),
    ExpenseDetailRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ExpenseDetailRouterArgs>(
              orElse: () => ExpenseDetailRouterArgs(
                  expenseId: pathParams.optString('expenseId')));
          return _i4.ExpenseDetail(
              key: args.key, expenseId: args.expenseId, amount: args.amount);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BottomNavRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(TodayRouter.name, path: 'today', children: [
            _i1.RouteConfig(TodayRoute.name, path: ''),
            _i1.RouteConfig(ExpenseDetailRouter.name,
                path: 'details/:expenseId'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ])
        ]),
        _i1.RouteConfig(ExpenseDetailRouterFullScreen.name,
            path: 'details/:expenseId')
      ];
}

class BottomNavRoute extends _i1.PageRouteInfo {
  const BottomNavRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'BottomNavRoute';
}

class ExpenseDetailRouterFullScreen
    extends _i1.PageRouteInfo<ExpenseDetailRouterFullScreenArgs> {
  ExpenseDetailRouterFullScreen({_i2.Key? key, String? expenseId, int? amount})
      : super(name,
            path: 'details/:expenseId',
            args: ExpenseDetailRouterFullScreenArgs(
                key: key, expenseId: expenseId, amount: amount),
            rawPathParams: {'expenseId': expenseId});

  static const String name = 'ExpenseDetailRouterFullScreen';
}

class ExpenseDetailRouterFullScreenArgs {
  const ExpenseDetailRouterFullScreenArgs(
      {this.key, this.expenseId, this.amount});

  final _i2.Key? key;

  final String? expenseId;

  final int? amount;
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

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class TodayRoute extends _i1.PageRouteInfo {
  const TodayRoute() : super(name, path: '');

  static const String name = 'TodayRoute';
}

class ExpenseDetailRouter extends _i1.PageRouteInfo<ExpenseDetailRouterArgs> {
  ExpenseDetailRouter({_i2.Key? key, String? expenseId, int? amount})
      : super(name,
            path: 'details/:expenseId',
            args: ExpenseDetailRouterArgs(
                key: key, expenseId: expenseId, amount: amount),
            rawPathParams: {'expenseId': expenseId});

  static const String name = 'ExpenseDetailRouter';
}

class ExpenseDetailRouterArgs {
  const ExpenseDetailRouterArgs({this.key, this.expenseId, this.amount});

  final _i2.Key? key;

  final String? expenseId;

  final int? amount;
}
