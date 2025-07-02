import 'package:ui_components_hub/core/network_executor/models/network_response.dart';

abstract class ErrorMapper{
  NetworkResponse mapError(Exception e);
}