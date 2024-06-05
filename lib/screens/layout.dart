import 'package:exam/screens/widget/side_bar.dart';
import 'package:flutter/material.dart';
import '../data/exam_data.dart';

class LayoutWidget extends StatefulWidget {
  const LayoutWidget({super.key});

  @override
  State<LayoutWidget> createState() => _HomeState();
}

class _HomeState extends State<LayoutWidget> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: navData
              .map((e) => BottomNavigationBarItem(
                    icon: Icon(e['icon'] as IconData?),
                    label: e['label'] as String?,
                  ))
              .toList(),
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          selectedItemColor: Colors.amber[800],
        ));
  }
}
