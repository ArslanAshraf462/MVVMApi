import 'package:flutter/material.dart';
import 'package:mvvm_api/utils/routes/routes_name.dart';
import '../../view/home_screen.dart';

import '../../view/login_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView(),);
        default:
          return MaterialPageRoute(builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          },
          );
    }
  }
}