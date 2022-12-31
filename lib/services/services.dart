import 'dart:convert';

import 'package:http/http.dart' as http;
import 'config_services.dart';

class Services {
  Future<Map<String, dynamic>> get(String url,
      {Map<String, dynamic>? params}) async {
    try {
      final baseurl = ConfigServices.urlBase;
      var result =
          await http.get(Uri.https(baseurl, url, params), headers: getHeader());
      return _validateResponse(result);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> multipartRequest(String url,
      {Map<String, dynamic>? params,
      List<http.MultipartFile>? files,
      required Map<String, String> body,
      required String method}) async {
    try {
      final baseurl = ConfigServices.urlBase;
      var request =
          http.MultipartRequest(method, Uri.https(baseurl, url, params));

      request.fields.addAll(body);
      request.files.addAll(files ?? []);
      request.headers.addAll(getHeader());
      var stream = await request.send();
      var response = await http.Response.fromStream(stream);
      return _validateResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  dynamic _validateResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return json.decode(response.body);
    } else if (response.statusCode >= 500 && response.statusCode <= 599) {
      throw ("Error interno del servidor error ${response.statusCode}");
    }
    switch (response.statusCode) {
      case 400:
        throw ("El servidor no pudo interpretar la solicitud error 400");
      case 401:
        throw ("Credenciales invalidas");
      case 403:
        throw ("No tiene permiso para este modulo, comuniquese con el administrador");
      case 404:
        throw ("Endpoint no encontrado");
      default:
        throw ("Error ${response.statusCode}, comuniquese con el administrador");
    }
  }

  Map<String, String> getHeader() {
    var header = <String, String>{};
    if (ConfigServices.useAuthorization) {
      header.addAll({
        ConfigServices.paramHeaderName:
            "${ConfigServices.authorizationMode} ${ConfigServices.apiToken}"
      });
    }
    return header;
  }
}
