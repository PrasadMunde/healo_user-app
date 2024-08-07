import 'package:flutter/material.dart';
import 'package:healo_users_app/src/constants/text_strings.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 30),
      unselectedIconTheme: IconThemeData(color: Colors.grey, size: 25),
      selectedItemColor: Colors.amberAccent,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: tHome,
        ),
        BottomNavigationBarItem(
          icon: Icon(LineAwesomeIcons.alternate_identification_card),
          label: tAbha,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_open_rounded),
          label: tRecords,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: tProfile,
        ),
      ],
    );
  }
}
