import 'dart:async';
import 'package:async/async.dart';

void main(){
  Stream<int> numberStream=
  Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]).asBroadcastStream();
  Stream<int> numberStreamTwo=
  Stream.fromIterable([11,12,13,14,15,16,17,18,19]).asBroadcastStream();

  StreamGroup.merge([numberStream,numberStreamTwo]).listen((event)=> print(event));

  StreamZip([numberStream,numberStreamTwo]).listen((numbercouple) =>print(numbercouple));


}