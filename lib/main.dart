import 'package:flutter/material.dart';

Future<void> main() async{
  Future<String> nameFuture =Future.value("PADC");

  nameFuture.then((name) => print(name));

  Future<List<int>> numberListFuture=
      Future.value([1,2,3,4,5,6,7]);
  numberListFuture.then((numberList) => print(numberList.toString()));

  Future<String> errorFuture= Future.error(NullThrownError());

  errorFuture.then((value) {
    print(value);
  }).catchError((error){
    print(error);
  });

  // Future<String> delayedNameFuture=
  //     Future.delayed(Duration(milliseconds: 3000),()=> "AMK");
  // delayedNameFuture.then((value) => print(value));

  Future<String> padcFuture = Future.value("PADC MY");
  String padc = await padcFuture;
  print (padc);

  Future<String> delayedNameFuture=
  Future.delayed(Duration(milliseconds: 3000),()=> "AMK");
  // String name= await delayedNameFuture;
  // print(name);
  delayedNameFuture.then((value) => print(value));

  print("Future have finished");

}