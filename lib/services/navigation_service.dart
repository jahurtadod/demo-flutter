import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatiorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatiorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeName) {
    return navigatiorKey.currentState!.pop();
  }
}
