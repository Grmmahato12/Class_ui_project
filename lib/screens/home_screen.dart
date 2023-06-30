import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_project_1/screens/feed_screen.dart';
import 'package:ui_project_1/screens/market_screen.dart';
import 'package:ui_project_1/screens/profile_screen.dart';
import 'package:ui_project_1/widgets/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  

 
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: CustomTheme.primaryColor,
          unselectedItemColor: const Color(0xff868687),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400
          ),
          currentIndex: _currentIndex,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
            _pageController.animateToPage(
              value, 
              duration: const Duration(microseconds: 300), 
              curve: Curves.linear
              );
          },
          
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Feed'),
               BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), 
              label: 'Market'
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person'
              ),
          ],
          ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          children: const [
            FeedScreen(),
            MarketScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}



