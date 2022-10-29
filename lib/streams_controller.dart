import 'dart:async';

import 'package:flutter/material.dart';
void main(){
  StreamController<List<int>> numbersStreamController= StreamController();

  //widgets
  numbersStreamController.stream.listen((event) => print(event));

  //blocs
  numbersStreamController.sink.add([1,2,3,4,5]);
  numbersStreamController.sink.add([6,7,8,9,10]);

  //dispose
  numbersStreamController.close();

  //Cannot add event after closing
  numbersStreamController.sink.add([11,23]);
}