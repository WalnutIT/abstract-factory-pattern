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
import 'package:abstract_factory/interfaces/abstract_factory.dart';
import 'package:flutter/material.dart';

///
/// author: Daniel Krentzlin
///
class Client extends StatelessWidget {
  final TargetWidget requestedWidget;
  final List data;

  const Client({Key key, this.requestedWidget, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var factory = AbstractFactory.getFactory(context);
    switch (requestedWidget) {
      case TargetWidget.text:
        return factory.createTextWidget(data[0] as String);
        break;
      default:
        return null;
    }
  }
}

enum TargetWidget { text }
