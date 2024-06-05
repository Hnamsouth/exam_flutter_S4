import 'package:exam/screens/home_page.dart';
import 'package:exam/screens/profile_page.dart';
import 'package:exam/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/destination.dart';

var navData = [
  {
    'icon': Icons.home,
    'label': 'First Page',
  },
  {
    'icon': Icons.business,
    'label': 'Second Page',
  },
  {
    'icon': Icons.school,
    'label': 'Third Page',
  },
];

List<Map<String, dynamic>> sideBarData = [
  {
    'icon': Icons.home,
    'label': 'First Page',
    'onTap': () {
      Get.toNamed('/first');
    },
  },
  {
    'icon': Icons.business,
    'label': 'Second Page',
    'onTap': () {
      Get.toNamed('/second');
    },
  },
  {
    'icon': Icons.school,
    'label': 'Third Page',
    'onTap': () {
      Get.toNamed('/third');
    },
  },
];

List<Destination> destinationData = [
  Destination(
    id: 1,
    title: 'Hội an',
    image:
        'https://th.bing.com/th/id/OIP._PPy4GtYNG5lLWMs9-edPwHaE8?rs=1&pid=ImgDetMain',
    rate: 4.3,
    favorite: false,
  ),
  Destination(
    id: 2,
    title: 'Hà Nội',
    image:
        'https://th.bing.com/th/id/OIP._PPy4GtYNG5lLWMs9-edPwHaE8?rs=1&pid=ImgDetMain',
    rate: 4.5,
    favorite: true,
  ),
  Destination(
    id: 3,
    title: 'Tp HCM',
    image:
        'https://th.bing.com/th/id/OIP._PPy4GtYNG5lLWMs9-edPwHaE8?rs=1&pid=ImgDetMain',
    rate: 5,
    favorite: true,
  ),
  Destination(
    id: 4,
    title: 'Đà Nẵng',
    image:
        'https://th.bing.com/th/id/OIP._PPy4GtYNG5lLWMs9-edPwHaE8?rs=1&pid=ImgDetMain',
    rate: 3.5,
    favorite: false,
  ),
];

var screens = [const HomePage(), const SearchPage(), const ProfilePage()];
