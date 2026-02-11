void main() {
  // 1. Basic Function Call
  greet('Explorer');

  // 2. Function with Return Value
  int sum = add(10, 5);
  print('Sum: $sum');

  // 3. Optional Positional Parameters ([])
  print('\nPositional Parameters:');
  describePerson('Alice');
  describePerson('Bob', 30);

  // 4. Named Parameters ({}) - Very common in Dart/Flutter!
  print('\nNamed Parameters:');
  createUser(name: 'Charlie', role: 'Admin');
  createUser(name: 'Dave'); // role is optional (default or nullable)

  // 5. Arrow Syntax (=>) for one-liners
  print('\nArrow Syntax:');
  print('Is 4 even? ${isEven(4)}');
}

// 1. Simple Void Function
void greet(String name) {
  print('Hello, $name!');
}

// 2. Returning a Value
int add(int a, int b) {
  return a + b;
}

// 3. Optional Positional Parameters
// Use [] to make parameters optional.
void describePerson(String name, [int? age]) {
  if (age != null) {
    print('$name is $age years old.');
  } else {
    print('$name\'s age is unknown.');
  }
}

// 4. Named Parameters
// Use {} to make parameters named. `required` makes them mandatory.
void createUser({required String name, String role = 'User'}) {
  print('User: $name, Role: $role');
}

// 5. Arrow Function
bool isEven(int number) => number % 2 == 0;
