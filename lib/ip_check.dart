// htps://api.ipify.org
import "dart:convert";
//regione,codice postale, città

import "package:http/http.dart" as http;

import "models/ip.dart";

const String urlString = "https://ipapi.co/json";

Future<Ip> getIp()async{
  final url = Uri.parse(urlString);
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);
  
  return Ip(ip : data["ip"], region: data["region"], postalCode: data["postal"], city: data["city"]);
}