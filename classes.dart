void main() {
  // 1. Creating Objects
  // 'new' keyword is optional in Dart and usually omitted.
  var myCar = Car('Tesla', 'Model S', 2023);

  // 2. Accessing Methods and Properties
  myCar.displayInfo();
  myCar.startEngine();

  // 3. Named Constructors
  var oldCar = Car.unknownYear('Ford', 'Mustang');
  oldCar.displayInfo();
}

// Defining a Class
class Car {
  // Properties (Instance Variables)
  String make;
  String model;
  int? year; // Nullable int

  // Constructor
  // 'this.make' is syntactic sugar for setting the property directly.
  Car(this.make, this.model, this.year);

  // Named Constructor
  Car.unknownYear(this.make, this.model) {
    year = null;
  }

  // Method
  void startEngine() {
    print('The $year $make $model engine is runnning! Vroom!');
  }

  void displayInfo() {
    print('Car: $make $model (${year ?? "Unknown Year"})');
  }
}
