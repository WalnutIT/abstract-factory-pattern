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
///
import 'package:abstract_factory/factories/large_screen_factory.dart';
import 'package:abstract_factory/factories/medium_screen_factory.dart';
import 'package:abstract_factory/factories/small_screen_factory.dart';
import 'package:abstract_factory/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

///
/// author: Daniel Krentzlin
///
abstract class AbstractFactory {
   Widget createTextWidget(String text);

   static AbstractFactory getFactory(BuildContext context) {
      if (ResponsiveWidget.isSmallScreen(context)) {
         return SmallScreenFactory();
      } else if (ResponsiveWidget.isMediumScreen(context)) {
         return MediumScreenFactory();
      } else {
         return LargeScreenFactory();
      }
   }
}