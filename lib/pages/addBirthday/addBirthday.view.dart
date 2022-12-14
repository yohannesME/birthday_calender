import 'dart:io';

import 'package:bahere_hasab/bahere_hasab.dart';
import 'package:flutter/services.dart';
import 'package:go_green_app/app_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_green_app/pages/addBirthday/addBirthday.viewmodel.dart';
import 'package:stacked/stacked.dart';

class AddBirthday extends StatefulWidget {
  const AddBirthday({Key? key}) : super(key: key);

  @override
  State<AddBirthday> createState() => _AddBirthdayState();
}

class _AddBirthdayState extends State<AddBirthday> {
  final _bdateController = TextEditingController();
  final _nameController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddBirthdayModel>.reactive(
      viewModelBuilder: () => AddBirthdayModel(context),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            width: kdScreenWidth(context),
            height: kdScreenHeight(context),
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 320,
                      color: kcBlueLight,
                      width: double.infinity,
                      child: model.storedImage != null
                          ? Image.file(
                              model.storedImage as File,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            )
                          : Text(
                              'No Image Taken',
                              textAlign: TextAlign.center,
                            ),
                    ),
                    Center(
                      child: AppText.headingOne('NEW BIRTHDAY'),
                      heightFactor: 8,
                    ),
                    DecoreTile(
                      w1: 100,
                      h1: 250,
                      w2: 200,
                      h2: 170,
                      color: kcBlue,
                    ),
                    IconButton(
                      onPressed: (() => model.returnToHome()),
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(
                          vertical: 45, horizontal: 15),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(labelText: 'Name'),
                        textInputAction: TextInputAction.next,
                        controller: _nameController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: _bdateController,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.allow(RegExp('[0-7,-,/]'))
                        // ],
                        decoration: const InputDecoration(
                          labelText: 'Input Birthday',
                          hintText: 'YYYY-MM-DD',
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                      TextField(
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        controller: _noteController,
                        decoration: const InputDecoration(
                          labelText: 'Input Note',
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //ImageInput(_selectImage),
                      TextButton.icon(
                        onPressed: model.takePicture,
                        icon: Icon(Icons.image),
                        label: AppText.body('Choose a Picture'),
                      ),
                    ],
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    model.addBirthday(
                      _nameController.text,
                      _bdateController.text,
                      _noteController.text,
                      DateTime.now().toString(),
                    );
                  },
                  icon: const Icon(Icons.done),
                  label: const Text('Finish'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
