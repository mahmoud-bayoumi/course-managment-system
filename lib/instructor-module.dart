import 'course_module.dart';
import 'user_module.dart';

// Defines the Instructor class, which extends User
// Demonstrates inheritance and composition (teaches courses)
class Instructor extends User {
  // List of courses taught by this instructor
  List<Course> coursesTaught = [];

  // Constructor for Instructor
  Instructor(
      { required this.coursesTaught,
      required super.id,
      required super.name,
      required super.email});
}
