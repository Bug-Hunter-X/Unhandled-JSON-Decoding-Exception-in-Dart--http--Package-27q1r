```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Access data (e.g., jsonData['key'])
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the JSON format exception appropriately 
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other JSON decoding errors
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; // Re-throw for higher-level handling
  }
}
```