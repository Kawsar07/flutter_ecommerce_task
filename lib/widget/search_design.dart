import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return AppBar(title: const Text("Search"), actions: [
      searchBar.getSearchAction(context),
    ]);
  }

  var city = ["dhaka", "khulna", "barisal", "ctg"];
  var controller = TextEditingController();

  void onSubmitted(String value) {


  }

  @override
  void initState() {
    searchBar = SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        clearOnSubmit: false,
        closeOnSubmit: false,
        onCleared: () {
          debugPrint("Search bar has been cleared");
        },
        onClosed: () {
          debugPrint("Search bar has been closed");
        });
    Future.delayed(const Duration(milliseconds: 500), () {
      searchBar.beginSearch(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: searchBar.build(context),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                searchBar.beginSearch(context);
              },
              child: const Text(
                "Feature not implemented yet",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Comeback later",
              style: TextStyle(fontSize: 12, color: HexColor("#BEBEDE")),
            )
          ],
        ),
      ),
    );
  }
}