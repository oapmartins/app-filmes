import 'package:get/get.dart';

class RestClient extends GetConnect {
  RestClient() {
    httpClient.baseUrl = 'https://api.themoviedb.org/3';
  }
}
