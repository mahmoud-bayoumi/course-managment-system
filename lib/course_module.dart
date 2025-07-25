import 'package:course_managment_system/instructor.dart';
import 'package:course_managment_system/student_module.dart';

class Course {
  String courseId, courseTitle;
  Instructor? instructor;
  List<Student> courseStudents = [];

  Course(
      {required this.courseId,
      required this.courseTitle,
      this.instructor,
      required this.courseStudents});

  void addStudent({required Student student}) {
    courseStudents.add(student);
    student.enrolledCourses.add(this);
  }

  void displayDetails() {
    String allStudentsID = '';
    for (var i = 0; i < courseStudents.length; i++) {
      if (i != courseStudents.length - 1) {
        allStudentsID += '${courseStudents[i].id} , ';
      } else {
        allStudentsID += '${courseStudents[i].id} .';
      }
    }

    print('''
    - Course ID : $courseId 
    - Course Title : $courseTitle 
    - Course Instructor : ${instructor!.name}
    - Course Students : $allStudentsID
    ''');
  }
}
