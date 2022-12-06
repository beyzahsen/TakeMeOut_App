import 'package:flutter/material.dart';

import '../utils/project_utils.dart';
import '../widgets/search_widget.dart';
import 'events_search_page.dart';

class MapPageTab extends StatefulWidget {
  const MapPageTab({super.key});

  @override
  State<MapPageTab> createState() => _MapPageTabState();
}

class _MapPageTabState extends State<MapPageTab> {
  final TextEditingController _searchController = TextEditingController();
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomSearchWidget(
                textFormController: _searchController,
                hintText: 'Search Events..',
                formIcon: Icons.search,
                searchClicked: searchButtonClicked,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 2),
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

  void searchButtonClicked() {
    if (_searchController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => EventsSearchPage(
            searchValue: _searchController.text,
          ),
        ),
      );
    }
  }
}