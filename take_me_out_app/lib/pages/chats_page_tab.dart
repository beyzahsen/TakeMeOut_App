import 'package:flutter/material.dart';
import 'package:take_me_out_app/utils/project_utils.dart';

class ChatsPageTab extends StatefulWidget {
  const ChatsPageTab({super.key});

  @override
  State<ChatsPageTab> createState() => _ChatsPageTabState();
}

class _ChatsPageTabState extends State<ChatsPageTab> {
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