class Vehicle {
  String brand;
  int year;
  
  //constructor
  Vehicle(this.brand, this.year);
  
  //Method 
  void displayInfo() {
    print('Brand: $brand');
    print('Year: $year');
  }
}

//Subclass Car inherits --> Vehicle
class Car extends Vehicle {
  String model;
  
  //Constructor
  Car(String brand, int year, this.model) : super(brand, year);
  
  @override
  void displayInfo() {
    print('\nCar Information:');
    super.displayInfo();      //Call parent method
    print('Model:$model');
  }
}

//Function
void main() {
  print('Vehicle Inheritance Demo');
  
  //objects  
  Car car1 = Car('lexus', 2025, 'RX 350');
  car1.displayInfo();

  Car car2 = Car('BMW', 2024, '7 Series');
  car2.displayInfo();

  Car car3 = Car('Range rover', 2024, 'Sport');
  car3.displayInfo();

  Car car4 = Car('Mercedes', 2025, 'G Class');
  car4.displayInfo();
} 