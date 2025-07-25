abstract class User {
  String _id, _name, _email;

  User({required String id, required String name, required String email})
      : _id = id,
        _name = name,
        _email = email;

  set id(String id) {
    _id = id;
  }

  set email(String email) {
    _email = email;
  }

  set name(String name) {
    _name = name;
  }

  String get id => _id;

  String get name => _name;

  String get email => _email;

  void displayInfo() {
    print('''User Name : $_name
    - User ID : $_id 
    - User Email : $_email
    ''');
  }
}
