import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String,Object>> sendToken(String token) async{
  var token1 = {
    'token':token
  };

  http.Response response = await http.post(
    Uri.parse('link'),
    body: jsonEncode(token1),
    headers: {"Content-Type": "application/json"},);
  print(response.statusCode);
  print(response.body);
  var data = jsonDecode(response.body)['string'];

    return data;
}

Future<Map<String,Object>> getToken() async{

  http.Response response = await http.get(
    Uri.parse('link'),
    headers: {"Content-Type": "application/json"},);
  print(response.statusCode);
  print(response.body);
  var data = jsonDecode(response.body)['string'];

  return data;
}