import 'dart:io';

void main() {
  //Q.1) Create a list of names and print all names using list.
  List mylst = ['SAMI', 'Fahad ', 'Wasi'];
  stdout.write('Q1- Answer: \n');
  print("List of Names: $mylst");

  //Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];

  // Add names of the 7 days
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  stdout.write('Q2- Answer: \n');
  // Print all days
  print(days);

  //Q.3: Create a list of Days and remove one by one from the end of list.
  // Create a list of days
  List<String> dayz = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  stdout.write('Q3- Answer: \n');
  // Using While loop to remove days one by one from the list
  while (dayz.isNotEmpty) {
    // Remove the last day
    String removedDay = dayz.removeLast();
    // Print the current state of the list
    print('Removed: $removedDay');
    print('Current days: $dayz');
  }

  //Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  List<int> numbers = [5, 3, 8, 1, 9, 7, 4, 10];
  int smallest = numbers[0];
  int greatest = numbers[0];
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
    if (number > greatest) {
      greatest = number;
    }
  }
  stdout.write('Q4- Answer: \n');
  print('Smallest number: $smallest & Greatest number: $greatest');

  //Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4

  Map<String, String> contacts = {
    'Sami': '0490',
    'fahad': '92949',
    'wasi': '23689',
    'farhan': '0325',
    'asif': '1597'
  };

  var keysWithLength4 = contacts.keys.where((key) {
    return key.length == 4; // Check if the key length is 4
  });
  stdout.write('Q5- Answer: \n');
  // Print the keys with length 4
  print('Keys with length 4: ${keysWithLength4.toList()}');

  //Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will
  // have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency
  // Create the world map
  Map<String, Map<String, String>> world = {
    'Pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'PKR',
      'language': 'URDU'
    },
    'India': {
      'capitalCity': 'New Delhi',
      'currency': 'INR',
      'language': 'Hindi'
    },
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'USD',
      'language': 'English'
    },
    'Canada': {
      'capitalCity': 'Ottawa',
      'currency': 'CAD',
      'language': 'English/French'
    },
  };

  // Specify the country you want to get information for
  String countryKey = 'Pakistan';
  stdout.write('Q6- Answer: \n');
  // Check if the country exists in the world map
  if (world.containsKey(countryKey)) {
    // Get the country's details
    var countryDetails = world[countryKey];

    // Print the capital and currency
    print('Country: $countryKey');
    print('Capital City: ${countryDetails!['capitalCity']}');
    print('Currency: ${countryDetails['currency']}');
  } else {
    print('Country not found.');
  }

  //Q.7: Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  //Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  // Create the expenses map
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // Check if "fri" exists in expenses
  String day = 'fri';
  if (expenses.containsKey(day)) {
    expenses[day] = 5000.0;
  } else {
    expenses[day] = 5000.0;
  }
  stdout.write('Q7- Answer: \n');
  // Print the updated expenses
  print(expenses);

//Q.8: remove all false values from below list by using removeWhere or retainWhere property.

// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];

// List of users' eligibility
  List<Map<String, dynamic>> usersEligibility = [
    // bool ko dynamic mai change kia hai.
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  // Remove all users who are not eligible
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  stdout.write('Q8- Answer: \n');
  // Print the updated list
  print(usersEligibility);

  //Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.
  List<int> intlist = [3, 5, 7, 2, 8, 6, 4];
  if (intlist.isEmpty) {
    print('The list is empty.');
    return;
  }
  int maxValue = intlist[0];
  for (int number in intlist) {
    if (number > maxValue) {
      maxValue = number;
    }
  }
  stdout.write('Q9- Answer: \n');
  print('The maximum value is: $maxValue');

  //Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates.
  // The order of elements in the new list should be the same as in the original list.
  // ---------- using function removeDuplicates
  // Sample list with duplicates
  List<String> strings = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'grape'
  ];

  // Remove duplicates
  List<String> result = removeDuplicates(strings);
  stdout.write('Q10- Answer: \n');
  // Print the result
  print(result);

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the
  // first n elements from the original list.
  // Sample list
  List<String> items = ['Honda', 'Suzuki', 'TOYOTA'];
  int n = 3;
  List<String> resultz = getFirstNElements(items, n);
  stdout.write('Q11- Answer: \n');
  // Print the result
  print(resultz);

  //Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order.
  // The original list should remain unchanged.
  List<String> originalList = ['Nokia', 'Samsung', 'Motorolla', 'QMobile'];
  List<String> reversedList = reverseList(originalList);
  stdout.write('Q12- Answer: \n');
  print('Original List: $originalList');
  print('Reversed List: $reversedList');

  //Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list.
  // The order of elements in the new list should be the same as in the original list.
  // Step 1: Create an original list of integers
  List<int> originlList = [1, 2, 3, 2, 4, 1, 5, 3];
  List<int> uniqueList = getUniqueElements(originlList);

  stdout.write('Q13- Answer: \n');
  print('Original List: $originlList');
  print('Unique List: $uniqueList');

  //Q.14: Implement Dart code to print the first 10 natural numbers in reverse order using a while loop.
  int numbr = 10; // Start from 10, the first natural number in reverse order

  stdout.write('Q14- Answer: \n');
  // While loop to print numbers in reverse
  while (numbr >= 1) {
    print(numbr);
    numbr--;
  }

  //Q:15  Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original
  //list as a parameter and print a new list containing only the positive numbers.
  // Example original list with some negative numbers
  List<int> originalLst = [10, -5, 3, -1, 7, -8, 2];
  List<int> positiveLst = filterPositiveNumbers(originalLst);

  stdout.write('Q15- Answer: \n');
  print('Original List: $originalLst');
  print('Positive Numbers: $positiveLst');

  //Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers.
  //The program should take in the original list as a parameter and print a new list containing only the even numbers.
  List<int> ogList = [10, 15, 22, 33, 44, 55, 60, 73];
  List<int> evenList = filterEvenNumbers(ogList);

  stdout.write('Q16- Answer: \n');
  print('Original List: $ogList');
  print('Even Numbers: $evenList');

  //Q:17  Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared.
  // The program should take in the original list as a parameter and print the new list.
  List<int> orgnlList = [1, 2, 3, 4, 5];

  // Call the function to square the numbers
  List<int> squaredList = squareValues(orgnlList);

  stdout.write('Q17- Answer: \n');
  print('Original List: $orgnlList');
  print('Squared List: $squaredList');

  //Q.18  Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop.
  int sum = 0; // Variable to hold the sum
  int number = 1; // Starting number

  // Do-while loop to sum odd numbers from 1 to 50
  do {
    if (number % 2 != 0) {
      sum += number;
    }
    number++; // Move to the next number
  } while (number <= 50);

  stdout.write('Q:18 Answer: \n');
  print('The sum of odd numbers from 1 to 50 is: $sum');

  //Q.19: Given a map representing a product with keys "name", "price", and "quantity",
  // write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
  // Example product map
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 999.99,
    'quantity': 5
  };

  // Check if the product is in stock
  checkStock(product);

  //Q.21: Write a Dart program that counts the number of digits in a given number using a while loop.".
  // Example number
  int NoO = 123456;

  // Call the function to count the digits
  int digitCount = countDigits(NoO);

  stdout.write('Q:20 Answer: \n');
  print('The number of digits in $number is: $digitCount');
} // end void main

//------- question no Q:10 function
List<String> removeDuplicates(List<String> originalList) {
  List<String> uniqueList = [];
  // Use a Set to track seen elements
  Set<String> seen = {};

  for (String item in originalList) {
    if (!seen.contains(item)) {
      uniqueList.add(item);
      seen.add(item);
    }
  }

  return uniqueList;
}

//--------- question No Q:11 function
List<T> getFirstNElements<T>(List<T> originalList, int n) {
  if (n > originalList.length) {
    n = originalList.length;
  }
  return originalList.sublist(0, n);
}

// question No Q:12 function
List<String> reverseList(List<String> inputList) {
  List<String> newList = List.from(inputList.reversed);
  return newList;
}

// question No Q:13 function
List<int> getUniqueElements(List<int> inputList) {
  List<int> newList = [];
  Set<int> seen = {};
  // Loop through the input list
  for (int element in inputList) {
    if (!seen.contains(element)) {
      newList.add(element);
      seen.add(element);
    }
  }
  return newList;
}

// question No Q:15 function
List<int> filterPositiveNumbers(List<int> inputList) {
  // Use the where() method to filter positive numbers
  return inputList.where((number) => number >= 0).toList();
}

// question No Q:16 function
List<int> filterEvenNumbers(List<int> inputList) {
  // Use the where() method to filter even numbers
  return inputList.where((number) => number % 2 == 0).toList();
}

// question No Q:17 Function
// Function to square each value in the list
List<int> squareValues(List<int> inputList) {
  return inputList.map((number) => number * number).toList();
}

// question No Q:19 function
// Function to check if the product is in stock
void checkStock(Map<String, dynamic> product) {
  int quantity = product['quantity'];
  stdout.write('Q:19 Answer: \n');
  if (quantity > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }
}

// question No Q:20 function

int countDigits(int number) {
  number = number.abs();
  int count = 0;
  // Use a while loop to count the digits
  while (number > 0) {
    number ~/= 10;
    count++;
  }
  return count == 0 ? 1 : count;
}
