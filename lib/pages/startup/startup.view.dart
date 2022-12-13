import 'package:go_green_app/app_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'startup.viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      onModelReady: (model) => SchedulerBinding.instance.addPostFrameCallback(
        (timeStamp) async {
          await model.runStartupLogic();
        },
      ),
      viewModelBuilder: () => StartupViewModel(context),
      builder: (context, model, child) => Scaffold(
        body: Container(
          alignment: Alignment.topLeft,
          width: kdScreenWidth(context),
          height: kdScreenHeight(context),
          color: Colors.white,
          child: Column(
            children: [
              DecoreTile(
                w1: 100,
                h1: 270,
                w2: 200,
                h2: 200,
                color: kcBlue,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: ImageUtils.getSvgFromAsset(
                  kaStartup_svg,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AppText.headingOne('BIRTHDAY CALENDER'),
              SizedBox(
                height: 40,
              ),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
