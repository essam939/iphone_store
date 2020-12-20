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

Widget header(BuildContext context) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xFFE7EEF8),
              blurRadius: 4.0,
              offset: Offset(0.6, 0.7))
        ], color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(30)),
        child: Icon(Icons.arrow_back_ios),
      ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
     Stack(
       children: [
         Container(
           width: 50,
           height: 50,
           decoration: BoxDecoration(boxShadow: <BoxShadow>[
             BoxShadow(
                 color: Color(0xFFE7EEF8),
                 blurRadius: 4.0,
                 offset: Offset(0.6, 0.7))
           ], color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(18)),
           child: Icon(Icons.shopping_bag_outlined),
         ),
         Positioned(
           top: 26,
           left: 2,
           child: Container(
             width: 20,
             height: 20,
             decoration: BoxDecoration(
               color: Colors.red,
               borderRadius: BorderRadius.circular(30),
             ),
             child: Center(child: Text("0",style: TextStyle(color: Colors.white),)),
           ),
         ),
       ],
     ),
      SizedBox(width: 20),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xFFE7EEF8),
              blurRadius: 4.0,
              offset: Offset(0.6, 0.7))
        ], color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(18)),
        child: Icon(Icons.menu_sharp),
      )
    ])
  ]);
}
