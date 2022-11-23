import 'package:pbp_flutter_lab/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<MyWatchList>> fetchMyWatchList() async {
  var url = Uri.parse('https://pbp-tugas.herokuapp.com/mywatchlist/json');

  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  return myWatchListFromJson(utf8.decode(response.bodyBytes));
}