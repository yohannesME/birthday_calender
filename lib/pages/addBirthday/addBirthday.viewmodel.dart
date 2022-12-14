import 'dart:io';

import 'package:bahere_hasab/bahere_hasab.dart';
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
  // final _bdService = locator<BirthdayService>();

  File? storedImage = null;

  late BuildContext _context;

  AddBirthdayModel(BuildContext context) {
    _context = context;
  }

  void returnToHome() {
    _navService.replaceWithTransition(HomeView());
  }

  void takePicture() async {
    final imageFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 600,
    );
    if (imageFile == null) return;
    storedImage = File(imageFile.path);

    print('stored image' + storedImage.toString());
    notifyListeners();

    // final appDir = await syspaths.getApplicationDocumentsDirectory();
    // final fileName = path.basename(imageFile.path);
    // final savedImage = await storedImage!.copy('${appDir.path}/${fileName}');
  }

  void addBirthday(String name, String birthdate, String note, String id) {
    print(id + birthdate + name + note);
    final newBd = Birthday(
      id: id,
      name: name,
      image: storedImage!.path,
      note: note,
      date: birthdate,
    );
    print(newBd.toString() + 'before');
    // _bdService.addBirthdate(newBd);
  }
}
