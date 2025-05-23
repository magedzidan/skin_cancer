import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/settings.dart';
import 'package:untitled1/features/Home/body.dart';
import 'package:untitled1/Cubit/states.dart';
import 'package:untitled1/notification.dart';
import 'package:untitled1/userprofile.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: 'General'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.sports_basketball_sharp,
        ),
        label: 'Sports'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
        ),
        label: 'Business'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.science_outlined,
        ),
        label: 'Science'),
  ];
  List<Widget> screens = [
    body(),
    userprofile(),
    notification(),
    settings()
  ];
  List<String> title = [
    '',
    'Profile',
    'Notifications',
    'Settings',
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (index == 0) {}
    if (index == 1) {}
    if (index == 2) {}
    if (index == 3) {}
    emit(AppBottomNavState());
  }
}
