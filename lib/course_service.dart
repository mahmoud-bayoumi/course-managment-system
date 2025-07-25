import 'package:course_managment_system/course_module.dart';
import 'package:course_managment_system/instructor.dart';

import 'student_module.dart';

// Service class to manage courses, students, and instructors
// Demonstrates encapsulation and service abstraction
class CourseService {
  // List of all courses in the system
  List<Course> courses = [];

  // Adds a new course
  void addCourse({required Course course}) {
    courses.add(course);
  }

  // Removes a course
  void removeCourse({required Course course}) {
    courses.remove(course);
  }

  // Enrolls a student in a course by course ID
  void enrollStudent({required String courseID, required Student student}) {
    Course? course = courses.firstWhere(
      (element) => element.courseId == courseID,
      orElse: () => throw Exception('Course not found'),
    );
    course.addStudent(student: student);
  }

  // Assigns an instructor to a course by course ID
  void assignInstructor(
      {required String courseID, required Instructor instructor}) {
    Course? course = courses.firstWhere(
      (element) => element.courseId == courseID,
      orElse: () => throw Exception('Course not found'),
    );
    course.instructor = instructor;
    instructor.coursesTaught.add(course);
  }
}
