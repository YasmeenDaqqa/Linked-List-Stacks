class Node {
  dynamic data;
  Node next;

  Node(this.data);
}

class LinkedList {
  Node head;

  void addNode(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head;
      while (current.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  Node findMiddleNode() {
    if (head == null) {
      return null;
    }

    Node slowPointer = head;
    Node fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer.next;
      fastPointer = fastPointer.next.next;
    }

    return slowPointer;
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  // Example: Adding nodes to the linked list
  for (int i = 1; i <= 5; i++) {
    linkedList.addNode(i);
  }

  print('Linked List:');
  linkedList.printList();

  Node middleNode = linkedList.findMiddleNode();

  if (middleNode != null) {
    print('\nMiddle Node: ${middleNode.data}');
  } else {
    print('\nEmpty list or no middle node.');
  }
}