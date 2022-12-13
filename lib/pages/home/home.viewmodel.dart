import 'package:flutter/material.dart';
import 'package:go_green_app/pages/addBirthday/addBirthday.view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:go_green_app/app_libs.dart';

class HomeViewModel extends BaseViewModel {
  static const String TAG = "StartupViewModel";

  final _userService = locator<UserService>();
  final _navService = locator<NavigationService>();

  late BuildContext _context;

  var _birthdays = null;

  get birthdays {
    return null;
  }

  void addNewBirthday() {
    print('yhis runs');
    _navService.navigateWithTransition(AddBirthday());
  }

  StartupViewModel(BuildContext context) {
    _context = context;
  }
}
