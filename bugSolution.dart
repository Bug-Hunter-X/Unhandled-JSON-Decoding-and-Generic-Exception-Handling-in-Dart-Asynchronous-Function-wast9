```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body) as Map<String, dynamic>; //Type safety
        // ... further processing of data ...
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('An error occurred: $e'); //More specific than just Exception
  } catch (e) {
    print('Unexpected error: $e');
  }
}
```