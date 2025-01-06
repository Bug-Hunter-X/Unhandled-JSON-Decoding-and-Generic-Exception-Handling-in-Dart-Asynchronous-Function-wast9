```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrect handling of JSON decoding
      final data = jsonDecode(response.body);
      // ... further processing of data ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Generic catch-all, losing specific error information
    print('Error fetching data: $e');
  }
}
```