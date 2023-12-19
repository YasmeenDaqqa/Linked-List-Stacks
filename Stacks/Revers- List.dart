void reverseList(List<dynamic> myList) {
  // Use the `reversed` property to reverse the list
  List<dynamic> reversedList = myList.reversed.toList();

  // Print the reversed list
  print(reversedList);
}

void main() {
  // Example usage
  List<int> numbers = [1, 2, 3, 4, 5];
  reverseList(numbers);
}