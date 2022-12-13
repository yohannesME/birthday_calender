// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_green_app/app_libs.dart';
import 'package:go_green_app/pages/home/home.viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            width: kdScreenWidth(context),
            height: kdScreenHeight(context),
            color: kcLight,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: kdScreenWidth(context),
                      height: 200,
                      color: kcPrimary,
                    ),
                    DecoreTile(
                      w1: 60,
                      h1: 150,
                      w2: 150,
                      h2: 120,
                      color: kcSlightLight,
                    ),
                    Center(
                      heightFactor: 5.5,
                      child: AppText.headingOne('BIRTHDAY', color: kcLight),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 30),
                  alignment: Alignment.topRight,
                  child: AppText.subheading('Birthday in'),
                ),
                AppText.headingOne(
                  '12 Days',
                  color: kcRed,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  child: AppText.headingThree(
                    'Recently Added',
                  ),
                ),
                Container(
                  height: 160,
                  padding: EdgeInsets.only(left: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProfileImageTiles(image: kaProfile),
                      ProfileImageTiles(image: kaProfile),
                      ProfileImageTiles(image: kaProfile),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 85,
                    top: 20,
                    bottom: 25,
                  ),
                  child: TextField(
                    // controller: searchController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: kcPrimary,
                      hintText: 'search',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kcBlueLight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kcPrimary),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                AppText.body('Birthday List'),
                Container(
                  height: 100,
                  color: kcBlueLight,
                  child: model.birthdays != null && model.birthdays.length > 0
                      ? ListView.builder(
                          itemBuilder: (ctx, index) {
                            return Card(
                              elevation: 6,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child:
                                        ImageUtils.getAssetImage(kaPlaceholder),
                                  ),
                                ),
                                title: Text(
                                  'name',
                                ),
                                subtitle: Text(
                                  'birthday',
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.edit),
                                ),
                              ),
                            );
                          },
                          itemCount: model.birthdays.length,
                        )
                      : Column(children: [
                          AppText.body(
                            'Nothing Added Yet.',
                          ),
                        ]),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            model.addNewBirthday();
          },
        ),
      ),
    );
  }
}
