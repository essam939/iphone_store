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

class CategoryModel {
  String imageUrl, name, price, type, fullName, description;
  Map<String, List<String>> differentImageUrl;

  CategoryModel(
      {@required this.imageUrl,
        @required this.name,
        @required this.fullName,
        @required this.price,
        @required this.type,
        @required this.description,
        @required this.differentImageUrl});
}

List<CategoryModel> categoriesGrid = [
  CategoryModel(
      name: "iphone 12 pro",
      fullName: "iphone 12 pro max",
      imageUrl: 'iphone12pro-1.jpg',
      type: 'iphone',
      price: '\$1400.00',
      description: "Available. Released 2020",
      differentImageUrl: {
        "iphone12pro-1": ["iphone12pro-1.jpg", "iphone12pro-2.jpg", "iphone12pro-3.jpg"],
        "iphone12pro-2": ["iphone12pro-1.jpg", "iphone12pro-2.jpg", "iphone12pro-3.jpg"],
        "iphone12pro-3": [
          "iphone12pro-1.jpg",
          "iphone12pro-2.jpg",
          "iphone12pro-3.jpg",
        ]
      }),
  CategoryModel(
      name: "iphone12",
      fullName: "iphone12",
      imageUrl: 'iphone12-1.jpg',
      type: 'iphone12',
      price: '\$1220.00',
      description: "Available. Released 2020.",
      differentImageUrl: {
        "iphone12-1": ["iphone12-1.jpg"],
        "iphone12-2": ["iphone12-2.jpg"],
        "iphone12-3": ["iphone12-3.jpg"]
      }),
  CategoryModel(
      name: "iphone xs",
      fullName: "apple-iphone xs",
      imageUrl: 'apple-iphonexs1.jpg',
      type: 'iphone xs',
      price: '\$5520.00',
      description: "Available. Released 2020",
      differentImageUrl: {
        "apple-iphonexs1": ["apple-iphonexs1.jpg"],
        "apple-iphonexs2": ["apple-iphonexs2.jpg"],
        "apple-iphonexs3": ["apple-iphonexs3.jpg"]
      }),
  CategoryModel(
      name: "iphone-se",
      fullName: "iphone-se",
      imageUrl: 'iphone-se1.jpg',
      type: 'iphone-se',
      price: '\$125.00',
      description: "Available. Released 2020",
      differentImageUrl: {
        "iphone-se1": ["iphone-se1.jpg"],
        "iphone-se2": ["iphone-se2.jpg"],
        "iphone-se3": ["iphone-se3.jpg"],
      })
];
