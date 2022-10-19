import 'package:flutter/material.dart';
import 'package:mvvm_api/utils/utils.dart';
import '/utils/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: InkWell(
          onTap: () {
            Utils.snackBar('No internet Connection', context);
            //Utils.flushBarErrorMessage('No internet Connection', context);
           // Utils.toastMessage('Click Me');
            //Navigator.pushNamed(context, RoutesName.home);
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
