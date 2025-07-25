import 'course_module.dart';
import 'user_module.dart';

// Defines the Student class, which extends User
// Demonstrates inheritance and composition (enrolled in courses)
class Student extends User {
  // List of courses the student is enrolled in
  List<Course> enrolledCourses = [];

  // Constructor for Student
  Student(
      {required this.enrolledCourses,
      required super.id,
      required super.name,
      required super.email});

  // Override to display student-specific information
  @override
  void displayInfo() {
    String allCoursesID = '';
    for (var i = 0; i < enrolledCourses.length; i++) {
      if (i != enrolledCourses.length - 1) {
        allCoursesID += 'Course ${enrolledCourses[i].courseId} , ';
      } else {
        allCoursesID += 'Course ${enrolledCourses[i].courseId} .';
      }
    }
    print('''
    - Student Name : ${super.name}
    - Student ID : ${super.id}
    - Student Email : ${super.email}
    - Student Enrolled Courses : $allCoursesID
    ''');
  }
}
