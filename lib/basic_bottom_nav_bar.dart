import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iinfinitecheck/screens/Advance.dart';
import 'package:iinfinitecheck/screens/basic.dart';
import 'package:iinfinitecheck/screens/companies.dart';
import 'package:iinfinitecheck/screens/setting.dart';
import 'package:iinfinitecheck/utils/customcolors.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class AnimatedBarExample extends StatefulWidget {
  const AnimatedBarExample({super.key});

  @override
  State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<AnimatedBarExample> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: CustomColors.header,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: CustomColors.header,
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          inkColor: Colors.black
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.house_outlined),
            selectedIcon: const Icon(Icons.house_rounded),
            backgroundColor: Colors.white,
            title: const Text('HOME'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.checklist_sharp),
            selectedIcon: const Icon(Icons.star_rounded),
            backgroundColor: Colors.white,
            title: const Text('BASIC'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.playlist_add_check),
            selectedIcon: const Icon(Icons.style),
            backgroundColor: Colors.white,

            title: const Text('ADVANCE'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.settings),
            selectedIcon: const Icon(Icons.settings),
            backgroundColor: Colors.white,

            title: const Text('SETTING'),
          ),
        ],
      //  hasNotch: false,
       // fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          // Navigate to the selected page based on the index
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),

      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          children:  [
            Basic(),
            CompaniesPage(),
            Advance(),
            SettingsPage()
          ],
        ),
      ),
    );
  }
}





class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget> [
  Basic(),
            CompaniesPage(),
            Advance(),
            SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: CustomColors.header,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.header,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rounded),
            label: 'BASIC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check),
            label: 'ADVANCE',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'SETTING',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
