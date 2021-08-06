import 'package:auto_route/auto_route.dart';
import 'package:autoroutetrial/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        TodayRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Today',
            ),
          ],
        );
      },
    );
  }
}
