import 'package:http/http.dart' as http;

class BaseHTTPClient {
  final client = http.Client();

  Future<dynamic> get(String api, Map<String, String>? headers) async {
    try {
      final url = Uri.parse(api);
      final response = await client.get(url, headers: headers);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception();
      }
    } catch (e) {
      //
    } finally {
      client.close();
    }
  }

  Future<dynamic> post(String endpoint) async {}

  Future<dynamic> put(String endpoint) async {}

  Future<dynamic> delete(String endpoint) async {}
}
