import 'package:flutter/material.dart';
import 'package:take_me_out_app/pages/authenticate/authenticate.dart';
import 'package:take_me_out_app/pages/homepage.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //return Authenticate();
    return HomePage();
  }
}
