/*
 * Copyright 2020 mido9000. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iphone_store/product_details.dart';

import 'category_model.dart';
import 'grid_items.dart';
import 'header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> categories = ["All", "Iphone 12 pro", "Iphone 12", "Iphone 11 pro", "Iphone 11"];

  @override
  Widget build(BuildContext context) {
    Widget getCategories(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 2, bottom: 2, right: 20),
          width: 160,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xFFC2D8FD)
                    : Colors.transparent,
                width: 2),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xFFE7EEF8),
                  blurRadius: 1,
                  offset: Offset(2.6, 2.6))
            ],
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff8f8f8),
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              children: [
                header(context),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 45, right: 45),
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xFFE7EEF8),
                          blurRadius: 1.0,
                          offset: Offset(2.6, 2.6))
                    ],
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45.0),
                      bottomLeft: Radius.circular(45.0),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 40,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: categories
                          .asMap()
                          .entries
                          .map((MapEntry map) => getCategories(map.key))
                          .toList()),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: StaggeredGridView.count(
                    crossAxisCount: 4,
                    padding: EdgeInsets.all(2.0),
                    children:
                    categoriesGrid.asMap().entries.map((MapEntry map) {
                      int index = map.key;
                      return GestureDetector(
                          onTap: () {
                            print(categoriesGrid[index]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetails(categoriesGrid[index])),
                            );
                          },
                          child: GridItems(index));
                    }).toList(),
                    staggeredTiles: categoriesGrid
                        .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                        .toList(),
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
