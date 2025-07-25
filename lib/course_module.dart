import 'package:course_managment_system/instructor-module.dart';
import 'package:course_managment_system/student_module.dart';

// Defines the Course class, representing a course in the system
// Demonstrates composition (contains students and instructor)
class Course {
  // Unique course ID and title
  String courseId, courseTitle;
  // The instructor assigned to this course (nullable)
  Instructor? instructor;
  // List of students enrolled in this course
  List<Student> courseStudents = [];

  // Constructor for Course
  Course(
      {required this.courseId,
      required this.courseTitle,
      this.instructor,
      required this.courseStudents});

  // Adds a student to the course and updates the student's enrolled courses
  void addStudent({required Student student}) {
    courseStudents.add(student);
    student.enrolledCourses.add(this);
  }

  // Displays details about the course, instructor, and enrolled students
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
