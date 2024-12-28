```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other exceptions (e.g., network issues)
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled by a higher level
  }
}
```