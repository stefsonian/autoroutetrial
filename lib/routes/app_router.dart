import 'package:auto_route/auto_route.dart';
import 'package:autoroutetrial/screens/bottom_nav/bottom_nav.dart';
import 'package:autoroutetrial/screens/home/home.dart';
import 'package:autoroutetrial/screens/today/expense_detail.dart';
import 'package:autoroutetrial/screens/today/today.dart';

// @CupertinoAutoRouter(
@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: BottomNav,
      children: [
        AutoRoute(
          path: "home",
          name: "HomeRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Home),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: "today",
          name: "TodayRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Today),
            AutoRoute(
              path: 'details/:expenseId',
              name: 'ExpenseDetailRouter',
              page: ExpenseDetail,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'details/:expenseId',
      name: 'ExpenseDetailRouterFullScreen',
      fullscreenDialog: true,
      page: ExpenseDetail,
    ),
  ],
)
class $AppRouter {}
