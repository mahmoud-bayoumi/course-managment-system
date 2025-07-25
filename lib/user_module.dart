// Abstract base class for all users in the system
// Demonstrates abstraction, encapsulation, and inheritance
abstract class User {
  // Private fields for user data
  String _id, _name, _email;

  // Constructor for User
  User({required String id, required String name, required String email})
      : _id = id,
        _name = name,
        _email = email;

  // Setters for user data
  set id(String id) {
    _id = id;
  }

  set email(String email) {
    _email = email;
  }

  set name(String name) {
    _name = name;
  }

  // Getters for user data
  String get id => _id;
  String get name => _name;
  String get email => _email;

  // Method to display user information
  void displayInfo() {
    print('''User Name : $_name
    - User ID : $_id 
    - User Email : $_email
    ''');
  }
}
