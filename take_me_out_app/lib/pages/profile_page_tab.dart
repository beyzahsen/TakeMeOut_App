import 'package:flutter/material.dart';
import 'package:take_me_out_app/utils/project_utils.dart';

class ProfilePageTab extends StatefulWidget {
  const ProfilePageTab({super.key});

  @override
  State<ProfilePageTab> createState() => _ProfilePageTabState();
}

class _ProfilePageTabState extends State<ProfilePageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    'Profil Picture',
                    style: TextStyle(
                      fontSize: 80,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
