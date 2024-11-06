import 'dart:io';
import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_coding/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class NetworkServicesApi implements BaseApiServices {
  @override
  Future getApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 30));
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Time Out Try Again');
    }
  }

  @override
  Future postApi(String url, data) async {
    // Implementation for postApi can be added here
  }
}
