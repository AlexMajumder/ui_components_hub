import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_components_hub/core/network_executor/models/request_model.dart';
import 'package:ui_components_hub/core/network_executor/network_executor.dart';
import 'app.dart';
import 'app/set_up_dio.dart';
import 'core/network_executor/error_mapper/default_error_mapper.dart';


Dio dio = getDioInstance();
NetworkExecutor networkExecutor = NetworkExecutor( dio: dio , errorMapper:  DefaultErrorMapper(onUnauthorized: () {  }));

void main(){
  runApp(const WidgetApp());
  networkExecutor.getRequest(RequestModel(path: ''));
}