import 'package:flutter/material.dart';
import 'package:take_me_out_app/utils/project_utils.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({super.key});

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 2),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
