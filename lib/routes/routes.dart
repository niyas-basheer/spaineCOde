// routes.dart
import 'package:get/get.dart';
import 'package:spine/routes/bottom_navigation.dart';
import 'package:spine/view/boarding_page/boarding_page.dart';
import 'package:spine/view/boarding_page/boarding_page2.dart';
import 'package:spine/view/home_page/home_page.dart';
import 'package:spine/view/login_page/login_page.dart';


final List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => BoardingPage(),
  ),
  GetPage(
    name: '/onBoardingPage2',
    page: () =>  const BoardingPage2(),
  ),
  GetPage(
    name: '/LoginPage',
    page: () =>  const LoginPage(),
  ),
  GetPage(
    name: '/home',
    page: () =>  const HomePage(),
  ),
   GetPage(
    name: '/bottomNavigation',
    page: () =>  const CustomBottomNavigationBar(),
  ),
];
