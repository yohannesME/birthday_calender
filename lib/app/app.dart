import 'package:go_green_app/pages/addBirthday/addBirthday.view.dart';
import 'package:go_green_app/pages/home/home.view.dart';
import 'package:go_green_app/pages/login/login.view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../pages/startup/startup.view.dart';
import '../services/_services.dart';

@StackedApp(
  routes: [
    // Views
    CupertinoRoute(page: StartupView, initial: true),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: AddBirthday),
  ],
  dependencies: [
    //core services
    // LazySingleton<AuthService>(
    //     classType: FirebaseAuthService, asType: AuthService),
    // LazySingleton<StorageService>(
    //     classType: FirebaseStorageService, asType: StorageService),
    // LazySingleton(classType: FirestoreService),
    // LazySingleton(classType: PushNotificationService),

    // Domain Services
    LazySingleton(classType: UserService),
    LazySingleton(classType: BirthdayService),

    // Stacked Services
    LazySingleton(classType: NavigationService),
  ],
)
class GoGreenApp {}
