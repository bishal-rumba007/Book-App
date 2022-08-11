import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 135,
          flexibleSpace: Image.asset('Assets/images/tmdbhelp.jpg', fit: BoxFit.fitWidth,),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.red,
            ),
            tabs: [
              Tab(text: 'Popular',),
              Tab(text: 'Top rated',),
              Tab(text: 'Upcoming',)
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: searchController,
                onFieldSubmitted: (val){
                  searchController.clear();
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  hintText: 'Search movie',
                  prefixIcon: Icon(Icons.search_rounded),
                )
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Center(child: Text('Popular')),
                  Center(child: Text('Top rated')),
                  Center(child: Text('Up coming')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
