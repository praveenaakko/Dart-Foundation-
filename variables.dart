void main() {
  // Variables & Data Types
  
  // 1. Standard types
  int age = 25;
  double height = 5.9;
  String name = 'Alice';
  bool isStudent = true;

  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is Student: $isStudent');

  // 2. Type Inference (var)
  var city = 'New York'; // Dart infers this is a String
  // city = 10; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  print('City: $city');

  // 3. Immutability (final vs const)
  // final: Value is set once, can be set at runtime.
  final now = DateTime.now(); 
  print('Current time: $now');

  // const: Value must be known at compile-time.
  const double pi = 3.14159;
  print('PI: $pi');
}
