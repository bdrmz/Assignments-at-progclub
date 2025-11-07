import 'dart:io';

void main() {
  print('=== Simple Calculator ===\n');
  
  while (true) {
    stdout.write('Enter the 1st number: ');
    double num1 = double.parse(stdin.readLineSync()!);
    
    stdout.write('Enter the 2nd number: ');
    double num2 = double.parse(stdin.readLineSync()!);
    
    stdout.write('Choose an operation (+, -, *, /): ');
    String operation = stdin.readLineSync()!;
    
    //calculation
    double result;
    
    switch (operation) {
      case'+':
        result=num1+num2;
        break;
      case'-':
        result=num1-num2;
        break;
      case'*':
        result=num1*num2;
        break;
      case'/':
        if(num2==0) {
          print('Error: Cannot divide by 0!!');
          continue;
        }
        result=num1/num2;
        break;
      default:
        print('Invalid operation! Please choose +, -, *, or /');
        continue;
    }
    
    print('Result:$num1$operation$num2=$result\n');
    
    stdout.write('Do you want to continue? (y/n): ');
    String choice =stdin.readLineSync()!.toLowerCase();
    
    if (choice=='n') {
      print('\nCalculator closed');
      break;
    }
  }
} 