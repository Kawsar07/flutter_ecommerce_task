import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({Key? key}) : super(key: key);

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            SizedBox(
              height: 60,
            ),
            TextField(
              style: new TextStyle(fontSize: 20.0, color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'Lays',
              ),
            ),
          ],
    );
  }
}
