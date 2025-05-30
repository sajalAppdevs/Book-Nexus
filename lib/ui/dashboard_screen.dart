import 'package:book_nexsus/constants/constants.dart';
import 'package:book_nexsus/gen/assets.gen.dart';
import 'package:book_nexsus/ui/explore_screen.dart';
import 'package:book_nexsus/ui/home_screen.dart';
import 'package:book_nexsus/ui/library_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: SizedBox(
        height: 84,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: const TextStyle(fontFamily: 'NM'),
            unselectedLabelStyle: const TextStyle(fontFamily: 'NR'),
            backgroundColor: AppColors.background,
            unselectedItemColor: AppColors.greyLight,
            selectedItemColor: AppColors.greenAccent,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Assets.svg.home.svg(),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Assets.svg.homeFilled.svg(),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Explore',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5, right: 8),
                  child: Assets.svg.search.svg(),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 5, right: 8),
                  child: Assets.svg.seachFilled.svg(),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Library',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Assets.svg.library.svg(),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Assets.svg.libraryFilled.svg(),
                ),
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          ExploreScreen(),
          LibraryScreen(),
        ],
      ),
    );
  }
}
