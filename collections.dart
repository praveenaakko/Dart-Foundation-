void main() {
  // 1. Lists (Ordered, allows duplicates)
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.add('Mango');
  print('Fruits List: $fruits');
  print('First Fruit: ${fruits[0]}');

  // 2. Sets (Unordered, unique items)
  Set<int> uniqueNumbers = {1, 2, 3, 3, 4}; // Duplicate '3' is ignored
  uniqueNumbers.add(5);
  print('\nUnique Numbers Set: $uniqueNumbers');
  print('Contains 3? ${uniqueNumbers.contains(3)}');

  // 3. Maps (Key-Value pairs)
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'France': 'Paris',
    'Japan': 'Tokyo',
  };
  capitals['India'] = 'New Delhi'; // Add new entry

  print('\nCapitals Map:');
  capitals.forEach((country, city) {
    print('$country -> $city');
  });

  // 4. Common Collection Operations
  var evenNumbers = [2, 4, 6, 8, 10];

  // .map() transforms elements
  var doubled = evenNumbers.map((n) => n * 2).toList();
  print('\nDoubled List: $doubled');

  // .where() filters elements
  var largeNumbers = doubled.where((n) => n > 10).toList();
  print('Numbers > 10: $largeNumbers');
}
