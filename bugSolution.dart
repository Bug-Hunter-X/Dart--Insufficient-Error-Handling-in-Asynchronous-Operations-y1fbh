```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        //Access data like jsonData['key']
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    print('Network error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```