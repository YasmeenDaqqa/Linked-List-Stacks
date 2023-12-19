class Node {
  int data;
  Node next;

  Node(this.data);
}

class LinkedList {
  Node head;

  // Function to reverse the linked list
  void reverseList() {
    Node prev = null;
    Node current = head;
    Node nextNode;

    while (current != null) {
      nextNode = current.next; // Save the next node
      current.next = prev; // Reverse the link

      // Move to the next pair of nodes
      prev = current;
      current = nextNode;
    }

    head = prev; // Update the head to the new first node (previous last node)
  }

  // Function to insert a new node at the beginning of the linked list
  void insert(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // Function to print the linked list
  void printList() {
    Node temp = head;
    while (temp != null) {
      print('${temp.data} ');
      temp = temp.next;
    }
    print('');
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  // Insert some nodes into the linked list
  linkedList.insert(1);
  linkedList.insert(2);
  linkedList.insert(3);
  linkedList.insert(4);

  print('Original linked list:');
  linkedList.printList();

  // Reverse the linked list
  linkedList.reverseList();

  print('Reversed linked list:');
  linkedList.printList();
}