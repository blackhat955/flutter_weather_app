import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response responceApi = await http.get(url);
    if (responceApi.statusCode == 200) {
      String data = responceApi.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(responceApi.statusCode);
    }
  }
}
