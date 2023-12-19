class Node {
  dynamic data;
  Node next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node head;

  void add(dynamic data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node current = head;
      while (current.next != null) {
        current = current.next;
      }
      current.next = Node(data);
    }
  }

  void printList() {
    Node current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void removeAllOccurrences(dynamic target) {
    // Remove from the beginning of the list
    while (head != null && head.data == target) {
      head = head.next;
    }

    // Remove from the rest of the list
    Node current = head;
    while (current != null && current.next != null) {
      if (current.next.data == target) {
        current.next = current.next.next;
      } else {
        current = current.next;
      }
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(2);
  linkedList.add(4);
  linkedList.add(2);

  print("Original Linked List:");
  linkedList.printList();

  dynamic elementToRemove = 2;
  linkedList.removeAllOccurrences(elementToRemove);

  print("\nLinked List after removing all occurrences of $elementToRemove:");
  linkedList.printList();
}