import 'package:course_managment_system/course_module.dart';
import 'package:course_managment_system/course_service.dart';
import 'package:course_managment_system/instructor-module.dart';
import 'package:course_managment_system/student_module.dart';

// Entry point for the Course Management System application
// Demonstrates OOP concepts: abstraction, inheritance, encapsulation, composition
void main() {
  // Create two students
  Student student1 = Student(
      enrolledCourses: [],
      id: 'student-01',
      name: 'Ahmed',
      email: 'ahmed@gmail.com');
  Student student2 = Student(
      enrolledCourses: [],
      id: 'student-02',
      name: 'Ali',
      email: 'ali@gmail.com');

  // Create an instructor
  Instructor instructor = Instructor(
      id: 'student-02', name: 'Ali', email: 'ali@gmail.com', coursesTaught: []);

  // Create a course
  Course course101 =
      Course(courseId: '101', courseTitle: 'C-101', courseStudents: []);

  // Service to manage courses
  CourseService service = CourseService();

  // Add course to the system
  service.addCourse(course: course101);

  // Assign instructor to the course
  service.assignInstructor(
      courseID: course101.courseId, instructor: instructor);

  // Enroll students in the course
  service.enrollStudent(courseID: course101.courseId, student: student1);
  service.enrollStudent(courseID: course101.courseId, student: student2);

  // Display course and student details
  course101.displayDetails();
  student1.displayInfo();
  student2.displayInfo();
}
