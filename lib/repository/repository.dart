import 'package:bloc_project/model/user_model.dart';
import 'package:dio/dio.dart';

class UserRepo {
  final Dio _dio = Dio();

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await _dio.get('https://dummyjson.com/products');

      if (response.statusCode == 200) {
        final data = response.data;

        if (data.containsKey('products') && data['products'] is List) {
          List<dynamic> products = data['products'];
          return products.map((json) => UserModel.fromJson(json)).toList();
        } else {
          throw Exception("API response is not in the expected format.");
        }
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception("Error fetching data: $e");
    }
  }
}
