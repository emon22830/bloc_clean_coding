

abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> pistApi(String url, var data);

  // Future<dynamic> delete(String url);
}