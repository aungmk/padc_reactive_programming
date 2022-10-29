import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async{
  Stream<int> numbersStream =
      Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]).asBroadcastStream();

  /// filtering operators
  // where
  numbersStream.where((number) => number %2 ==0)
      .listen((number) {
    print( "where $number");
  });

  // first where
  numbersStream.firstWhere((number) => number %2 ==0)
      .then((number) {
    print("first where $number");
  });

  // last where
  numbersStream.lastWhere((number) => number %2 ==0)
      .then((number) {
    print("last where $number");
  });

  /// conditional operators
  // take
  numbersStream.take(5).listen((number) {
    print("take5 $number");
  });

  // take while
  numbersStream.takeWhile((element) => element<5)
      .listen((number) => print("takewhile $number"));

  // skip
  numbersStream.skip(5).listen((number) {
    print("skip5 $number");
  });

  // skip while
  numbersStream.skipWhile((element) => element<5)
      .listen((number) => print("skipwhile $number"));

  ///transformation operators
  //Map
  numbersStream.map((number) => number*2).listen((number) => print(number));

  //asyn Expand
  Stream<List<int>> numberListStream= Stream.value([1,2,3,4,5,6,7,8,9,10]);
  numberListStream
  .asyncExpand((numberList) => Stream.fromIterable(numberList))
  .where((number) => number%2 ==0)
  .map((number)=> number*2)
  .listen((number) => print(number));

  ///operator that produce a single value
  //join
  numbersStream.join(",").then((value) => print (value));

  //reduce
  numbersStream.reduce((previous, element) => previous+element).then((value) => print(value));

  //toList
  numbersStream.toList().then((value) => print(value));

  //toset
  numbersStream.toSet().then((value) => print(value));

}