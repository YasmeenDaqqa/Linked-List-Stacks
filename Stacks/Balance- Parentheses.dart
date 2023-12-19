bool areParenthesesBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (currentChar == '(') {
      // Push opening parenthesis onto the stack
      stack.add(currentChar);
    } else if (currentChar == ')') {
      // Check if the stack is empty (unmatched closing parenthesis)
      if (stack.isEmpty) {
        return false;
      }

      // Pop the top element from the stack
      stack.removeLast();
    }
  }

  // If the stack is empty, all parentheses are balanced
  return stack.isEmpty;
}

void main() {
  // Example usage:
  String testString = "(a + b) * (c - d)";
  bool result = areParenthesesBalanced(testString);

  if (result) {
    print("Parentheses are balanced.");
  } else {
    print("Parentheses are not balanced.");
  }
}