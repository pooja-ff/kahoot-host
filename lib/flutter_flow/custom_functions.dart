import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

int createRandomCode() {
  // Create a function that generates a random 4 digit code
  var rng = new math.Random();
  var code = rng.nextInt(9000) + 1000;
  return code;
}

List<String> createIntoList(
  String optionA,
  String optionB,
  String optionC,
  String optionD,
) {
  // create a function that takes 4 String arguments and converts into one List<String> object
  List<String> options = [optionA, optionB, optionC, optionD];
  return options;
}

int createRandomFontSize() {
  // create random even number font size between 14 and 36
  var rng = new math.Random();
  var fontSize = rng.nextInt(36 - 14) + 14;
  if (fontSize % 2 != 0) {
    fontSize = fontSize + 1;
  }
  return fontSize;
}

List<String> getOptionList(
  List<QuestionStruct> questionList,
  int index,
) {
  return questionList[index].options!.toList();
}

String getCurrentTimeInMs() {
  // Get current time in milliseconds
  return DateTime.now().millisecondsSinceEpoch.toString();
}

String getDifferenceOfSeconds(String askStartTime) {
  // get difference in seconds from askStartTime (in milliseconds) and current Time in miliseconds
  // Get current time in milliseconds
  String currentTime = getCurrentTimeInMs();
  // Get difference in milliseconds
  int difference = int.parse(currentTime) - int.parse(askStartTime);
  // Convert milliseconds to seconds
  int differenceInSeconds = difference ~/ 1000;
  return differenceInSeconds.toString();
}
