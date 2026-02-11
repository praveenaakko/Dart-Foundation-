void main() {
  // 1. If-Else Statements
  int score = 85;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }

  // 2. For Loop
  print('\nFor Loop:');
  for (int i = 0; i < 3; i++) {
    print('Count: $i');
  }

  // 3. For-In Loop (iterating over a list)
  var fruits = ['Apple', 'Banana', 'Cherry'];
  print('\nFor-In Loop:');
  for (var fruit in fruits) {
    print(fruit);
  }

  // 4. While Loop
  print('\nWhile Loop:');
  int count = 0;
  while (count < 3) {
    print('While count: $count');
    count++;
  }
}
