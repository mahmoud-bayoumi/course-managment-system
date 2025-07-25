import 'course_module.dart';
import 'user_module.dart';

class Student extends User {
  List<Course> enrolledCourses = [];
  Student(
      {required this.enrolledCourses,
      required super.id,
      required super.name,
      required super.email});

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
