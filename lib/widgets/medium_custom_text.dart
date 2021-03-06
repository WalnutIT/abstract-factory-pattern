/// Copyright 2020 - 2020 the original author or authors.
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
import 'package:abstract_factory/interfaces/abstract_custom_text.dart';
import 'package:flutter/material.dart';

///
/// author: Daniel Krentzlin
///
class MediumCustomText extends StatelessWidget implements AbstractCustomText {
  static const double FONT_SIZE = 16.0;
  final String mediumText;

  const MediumCustomText({Key key, this.mediumText}) : super(key: key);

  @override
  String get text => this.mediumText;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: FONT_SIZE),
    );
  }
}
