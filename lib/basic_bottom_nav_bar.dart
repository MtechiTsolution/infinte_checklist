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

