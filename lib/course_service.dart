import 'package:course_managment_system/course_module.dart';
import 'package:course_managment_system/instructor.dart';

import 'student_module.dart';

class CourseService {
  List<Course> courses = [];
  void addCourse({required Course course}) {
    courses.add(course);
  }

  void removeCourse({required Course course}) {
    courses.remove(course);
  }

  void enrollStudent({required String courseID, required Student student}) {
    Course? course = courses.firstWhere(
      (element) => element.courseId == courseID,
      orElse: () => throw Exception('Course not found'),
    );
    course.addStudent(student: student);
  }

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
