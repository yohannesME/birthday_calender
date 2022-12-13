import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_green_app/pages/home/home.view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;

import 'package:go_green_app/app_libs.dart';

class AddBirthdayModel extends BaseViewModel {
  static const String TAG = "AddBirthdayModel";

  final _userService = locator<UserService>();
  final _navService = locator<NavigationService>();

  File? storedImage = null;

  late BuildContext _context;

  AddBirthdayModel(BuildContext context) {
    _context = context;
  }

  void returnToHome() {
    _navService.replaceWithTransition(HomeView());
  }

  void takePicture() async {
    print('this ruuuuuuuuns');

    final imageFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 600,
    );
    if (imageFile == null) return;
    // setState(() {
    storedImage = File(imageFile.path);
    // });

    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final savedImage = await storedImage!.copy('${appDir.path}/${fileName}');
  }
}
