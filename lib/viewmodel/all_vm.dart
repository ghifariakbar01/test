import 'package:dio/dio.dart';
import 'package:testProject/model/item/item.dart';

class ALLVm {
  // make DIO post
  static Future<List<Item>> getItems(String url) async {
    Dio dio = new Dio();
    Response response = await dio.post(url);
    List<Item> items =
        response.data.map<Item>((json) => Item.fromJson(json)).toList();
    return items;
  }
}
