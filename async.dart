void main() async {
  print('1. Start Application');

  // 1. Using async/await (Cleanest way)
  print('2. Fetching user data...');
  try {
    String data = await fetchUserData();
    print('3. Data received: $data');
  } catch (e) {
    print('3. Error fetching data: $e');
  }

  // 2. Using .then() (Older style, good to know)
  print('4. Fetching settings (classic style)...');
  fetchSettings()
      .then((settings) {
        print('5. Settings received: $settings');
      })
      .catchError((e) {
        print('5. Error: $e');
      });

  print(
    '6. End of Main (Async operations continue in background if not awaited)',
  );
}

// Simulating a network request that takes time
Future<String> fetchUserData() async {
  // Wait for 2 seconds
  await Future.delayed(Duration(seconds: 2));
  // Return a value
  return 'User: Alice (ID: 123)';
}

// Simulating another request
Future<String> fetchSettings() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'Theme: Dark Mode';
  });
}
