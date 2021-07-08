import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/core/router_manager.dart';
import 'package:travel/services/auth_service.dart';
import 'package:travel/views/login_view.dart';


class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

//Oturum açma yetkilendirilmesi
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(kThemeChangeDuration).then((_) {
        RouteManager.initializeRoute(context);
        if (FirebaseAuth.instance.currentUser != null) {
          AuthService.instance.autoLogin();
        } else {
          RouteManager.newPage(LoginView());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      body: Center(child: Image.asset('assets/images/splash.gif')),
    );
  }
}
