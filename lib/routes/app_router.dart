import 'package:auto_route/auto_route.dart';
import 'package:autoroutetrial/screens/bottom_nav/bottom_nav.dart';
import 'package:autoroutetrial/screens/home/home.dart';
import 'package:autoroutetrial/screens/today/today.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: BottomNav,
      children: [
        // our BooksRouter has been moved into the children field
        AutoRoute(
          path: "home",
          name: "HomeRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Home),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // our AccountRouter has been moved into the children field
        AutoRoute(
          path: "today",
          name: "TodayRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Today),
            // AutoRoute(path: 'details', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
