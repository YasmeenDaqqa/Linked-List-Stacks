class Node {
  late int data;
  Node? next;

  Node(int data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList {
  Node? head;

  LinkedList() {
    this.head = null;
  }

  // Function to add a new node to the linked list
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }

  // Function to print nodes in reverse order
  void printReverse() {
    _printReverseRecursive(head);
  }

  // Helper function for recursive printing
  void _printReverseRecursive(Node? node) {
    if (node == null) {
      return;
    }

    // Recursively call for the next node
    _printReverseRecursive(node.next);

    // Print the current node data
    print(node.data);
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  // Adding nodes to the linked list
  linkedList.addNode(1);
  linkedList.addNode(2);
  linkedList.addNode(3);
  linkedList.addNode(4);

  // Printing nodes in reverse order
  print("Nodes in reverse order:");
  linkedList.printReverse();
}