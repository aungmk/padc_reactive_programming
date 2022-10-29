import 'package:flutter/material.dart';

void main() async{

  Stream<int> numberStream = Stream.fromIterable([1,2,3,4,5,6]);
  numberStream.listen((number) {
    print(number);
  });

  Stream<List<int>> numberListStream=
  Stream.value([1,2,3,4,5,6]);
  numberListStream.listen((number) {
    print(number);
  });

  Stream<int> errorStream=Stream.error(NullThrownError());
  errorStream.listen((number) {
    print(number);
  }).onError((error){
    print(error.toString());
  });
}