import 'dart:io';

void main() {
  double operations(int num1, int num2, String? operation) {
    switch (operation) {
      case '+':
        return num1 + num2 + .0;
      case '-':
        return num1 - num2 + .0;
      case '*':
        return num1 * num2 + .0;
      case '/':
        return num1 / num2;
      default:
        return -1;
    }
  }

  print("Enter operating mode:");
  // Scanning number
  int? n = int.parse(stdin.readLineSync()!);
  if (n == 1) {
    //Mode 1
    print("Enter the first number:");
    int? num1 = int.parse(stdin.readLineSync()!);
    while (num1 == null) {
      int? num1 = int.parse(stdin.readLineSync()!);
    }
    print("Enter operation sign [+,-,*,/]:");
    String? operation = stdin.readLineSync();
    print("Enter the second number:");
    int? num2 = int.parse(stdin.readLineSync()!);
    double result = 0;
    result = operations(num1, num2, operation);
    if (result == -1) {
      print("Wrong operand, restarting application.");
      main();
    } else {
      print("Result of $num1 $operation $num2 = $result");
    }
  } else if (n == 2) {
    var int1list;
    var oplist;
    var int2list;
    ///////////////////////////MODE 2
    print("All lists are seperated by spaces. Input as: 1 2");
    print("Enter the first list:");
    String? list1 = stdin.readLineSync();

    while (list1 == null) {
      String? list1 = stdin.readLineSync();
    }
    if (list1 != null) int1list = list1.split(' ');
    print("Enter operation sign [+,-,*,/]:");
    String? operation = stdin.readLineSync();
    while (operation == null) {
      String? operation = stdin.readLineSync();
    }
    if (operation != null) oplist = operation.split(' ');
    print(oplist);

    print("Enter the second list:");
    String? list2 = stdin.readLineSync();

    while (list2 == null) {
      String? list2 = stdin.readLineSync();
    }
    if (list2 != null) int2list = list2.split(' ');

    var results = [];
    for (var i = 0; i < int1list.length; i++) {
      results.add(operations(
          int.parse(int1list[i]), int.parse(int2list[i]), oplist[i]));
      print(
          "Result of ${int1list[i]} ${oplist[i]} ${int2list[i]} = ${results[i]}");
    }

    //Mode 2
  } else {
    print("There is no mode $n. Please try again choosing either 1 or 2.");
    main();
  }
}
