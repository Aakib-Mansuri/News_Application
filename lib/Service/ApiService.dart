import 'dart:convert';
import 'package:http/http.dart';
import '../Modals/BioData.dart';

class ApiService{
  final endpoint_page1 = 'https://reqres.in/api/users?page=1';
  final endpoint_page2 = 'https://reqres.in/api/users?page=2';

  Future<List<BioData>> getData() async
  {
        List<BioData> dataList = [];
        Response response = await get(Uri.parse(endpoint_page1));
        if(response.statusCode == 200)
        {
            List<dynamic> body = jsonDecode(response.body)['data'];
            dataList.addAll(body.map(((dynamic item) => BioData.fromJson(item))).toList());
        }
        else{
          throw "Something went wrong";
        }

        response = await get(Uri.parse(endpoint_page2));
        if(response.statusCode == 200)
        {
          List<dynamic> body = jsonDecode(response.body)['data'];
          dataList.addAll(body.map(((dynamic item) => BioData.fromJson(item))).toList());
        }
        else{
          throw "Something went wrong";
        }
        return dataList;
  }
}