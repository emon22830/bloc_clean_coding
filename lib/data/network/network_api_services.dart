
import 'dart:convert';
import 'dart:io';

import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:bloc_clean_coding/data/network/base_api_services.dart';

class NetworkServicesApi implements BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async{
  dynamic jsonResponse;
    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 40));

      jsonResponse = returnResponse(response);

      if(response.statusCode == 200){

      }
    }on SocketException{
      throw NoInternetException();
    }on TimeOutException{
      throw FetchDataException('Time Out, Try Again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async{
    dynamic jsonResponse;
    try{
      final response = await http.delete(Uri.parse(url)).timeout(Duration(seconds: 40));

      jsonResponse = returnResponse(response);

      if(response.statusCode == 200){

      }
    }on SocketException{
      throw NoInternetException();
    }on TimeOutException{
      throw FetchDataException('Time Out, Try Again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async{

    dynamic jsonResponse;
    try{
      final response = await http.post(Uri.parse(url),
      body: data,
      ).timeout(Duration(seconds: 40));

      jsonResponse = returnResponse(response);

      if(response.statusCode == 200){

      }
    }on SocketException{
      throw NoInternetException();
    }on TimeOutException{
      throw FetchDataException('Time Out, Try Again');
    }
    return jsonResponse;

  }

  dynamic returnResponse(http.Response response){
    switch(response){
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 401:
      throw UnauthorisedException();

      case 500:
        throw FetchDataException('Error communication with server' + response.statusCode.toString());
        default:
          throw UnauthorisedException();

    }
  }
}