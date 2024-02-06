import 'dart:convert';

import 'package:http/http.dart' as http;

class Api_Helper {
  static var Insertdata;
  static var Deletedata;
  static var decodegata;
  static Future Insert_api({required String api, required Map data}) async {
    var response = await http.post(Uri.parse(api), body: data);
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Insertdata = json.decode(response.body);
      print(response.body);
      print(Insertdata);
      return Insertdata;
    } else {
      Insertdata = jsonDecode(response.body);
      return Insertdata;
    }
  }

  static Future Delete_api({required String api, required Map data}) async {
    var response = await http.post(Uri.parse(api), body: data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Deletedata = json.decode(response.body);
      return Deletedata;
    } else {
      Deletedata = json.decode(response.body);
      return Deletedata;
    }
  }

  static Future Select_api_Data({
    Map? data,
    required String api,
  }) async {
    print("object");
    var response = await http.get(
      Uri.parse("https://neartravel.teleferti.com/api/places"),
    );
    print("snfvdjvnc");
    print(response);
    if (response.statusCode == 200) {
      decodegata = jsonDecode(response.body);
      print("UIWasuifguef");
      print(decodegata);
      return decodegata;
    } else {
      print("object");
      decodegata = jsonDecode(response.statusCode.toString());
      return decodegata;
    }
  }
}
