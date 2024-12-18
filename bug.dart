```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data (e.g., jsonData['key'])
    } else {
      // Handle error (e.g., throw an exception)
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, JSON decoding errors)
    print('Error fetching data: $e');
    // Re-throw the exception for higher-level handling if needed
    rethrow;
  }
}
```