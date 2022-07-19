import 'dart:io';

import 'package:dio/dio.dart';
var dio = Dio();
downloadJre()async{
  // Platform.isLinux
  Response rsp = await dio.get("https://bmclapi2.bangbang93.com/java/list");
  // rsp.data
}