import 'package:flutter/material.dart';
import 'package:salem_portfolio/ui/contact/contact_me.dart';
import 'package:salem_portfolio/ui/eperience/experience_page.dart';
import 'package:salem_portfolio/ui/home_screen.dart';
import 'package:salem_portfolio/ui/projects/my_projects_page.dart';
import 'package:salem_portfolio/ui/my_stack/my_stack.dart';
import 'package:salem_portfolio/ui/nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Use a final PageController to manage the PageView and NavBar.
  final PageController pageController = PageController();

  // Dispose of the controller to prevent memory leaks.
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: NavBar(
          // Get the current page index directly from the controller.
          // We use hasClients to ensure the controller is attached to the view.
            index: pageController.hasClients ? pageController.page?.round() ?? 0 : 0,
            onNav: (i) {
              // Animate the PageView to the selected page.
              pageController.animateToPage(
                i,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            }),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        controller: pageController,
        onPageChanged: (i) {
          setState(() {});
        },
        children: const [
          HomeScreen(),
          ExperiencePage(),
          MyProjectsPage(),
          MyStack(),
          ContactMe()
        ],
      ),
    );
  }
}
