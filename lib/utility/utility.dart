import 'package:flutter/material.dart';
import 'dart:math' as math;

// Viewのスペースを空ける
class SpaceBox extends SizedBox {
  SpaceBox({double width = 8, double height = 8})
      : super(width: width, height: height);

  SpaceBox.width([double value = 8]) : super(width: value);
  SpaceBox.height([double value = 8]) : super(height: value);
}

// ランダムな文字列を作成する
String randomString(int num) {
  int smallLetterStart = 97;
  int smallLetterCount = 26;

  var alphabetArray = [];

  if (num <= 0) {
    num = 10;
  }

  var rand = new math.Random();
  for (var i = 0; i < num; i++) {
    int number = rand.nextInt(smallLetterCount);
    int randomNumber = number + smallLetterStart;
    alphabetArray.add(String.fromCharCode(randomNumber));
  }

  return alphabetArray.join('');
}

// ignore: non_constant_identifier_names
DateTime TranslateTimeStampToDateTime(timestamp) {
  var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp);
  return date;
}

// Nullならtrue
bool isNull(s) {
  return s == null;
}

// Nullでなければtrue
bool isNotNull(s) {
  return !isNull(s);
}
