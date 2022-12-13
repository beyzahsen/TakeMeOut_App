import 'package:flutter/material.dart';
import 'package:take_me_out_app/pages/home_page_tab.dart';
import 'package:take_me_out_app/pages/profile_page_tab.dart';

import '../utils/project_utils.dart';
import 'chats_page_tab.dart';
import 'map_page_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true, //butonun arkasının saydam olması
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: showFab
            ? FloatingActionButton(
                backgroundColor: Colors.white,
                child: const Icon(Icons.edit_calendar_rounded, size: 30, color: Color.fromARGB(208, 157, 124, 207),),
                onPressed: () {
                  if (_tabController.index == 1) {
                    _tabController.animateTo(0);
                  } else {
                    _tabController.animateTo(1);
                  }
                },
              )
            : null,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 5,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            unselectedLabelColor: Color.fromARGB(208, 157, 124, 207),
            indicatorWeight: 0.5,
            indicatorColor: Color.fromARGB(255, 49, 55, 172),
            labelColor: Color.fromARGB(255, 49, 55, 172),
            controller: _tabController,
            tabs: const [
              Tab(icon:Icon(Icons.home_rounded)), //groups_rounded
              Tab(icon:Icon(Icons.location_pin)), //location_pin, map_rounded, event_rounded
              Tab(icon:Icon(Icons.email_rounded)),
              Tab(icon:Icon(Icons.account_circle))
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 80,
          shadowColor: Colors.white24,
          elevation: 2.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Take Me Out',
            style: ProjectStyles.titleStyle,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePageTab(),
            MapPageTab(),
            ChatsPageTab(),
            ProfilePageTab(),
          ],
        ),
      ),
    );
  }
}
