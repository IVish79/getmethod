import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Model extends GetxController{

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  //3. Rx define for get method for start with Int Value
  RxInt sum=0.obs;

  void total(String a, String b)
  {
    sum.value = int.parse(a)+int.parse(b);
  }
}

