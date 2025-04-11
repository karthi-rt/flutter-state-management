import 'package:get/get.dart';
import 'package:state_management/getx/folder_structure/view/about/about_page.dart';
import '../view/home/home_page.dart';

appRoutes() => [
  GetPage(name: '/home', page: () => HomePage(), transition: Transition.zoom),
  GetPage(name: '/about', page: () => AboutPage(), transition: Transition.rightToLeft),
];
