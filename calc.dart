import 'dart:io';

void main() {
  print("Simple calculator");

  print("Enter the first number:> ");
  double num1 = double.parse(
      stdin.readLineSync()!); //read the input and convert from string to double

  print("Enter the second number:> ");
  double num2 = double.parse(
      stdin.readLineSync()!); //read the input and convert from string to double

  print("Select an operation:> ");
  print("1. Addition(+)");
  print("2. Subtraction(-)");
  print("3. Multiplication(*)");
  print("4. Division(/)");

  int choice = int.parse(stdin
      .readLineSync()!); //to read the choice of operation and convert to int

  double result;

  switch (choice) {
    case 1:
      result = num1 + num2;
      print("Result from the addition of $num1 and $num2 is $result");
      break;
    case 2:
      result = num1 - num2;
      print("Result from the subtraction of $num1 and $num2 is $result");
      break;
    case 3:
      result = num1 * num2;
      print("Result from multiplication of $num1 and $num2 is $result");
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print("Result between the dividion of $num1 and $num2 is $result");
      } else {
        print("Error: Divion by zero is not allowed! ");
      }
      break;
    default:
      print("Invalid choice enter a number between 1 and 4");
  }
}
