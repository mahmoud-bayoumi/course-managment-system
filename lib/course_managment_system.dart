import 'package:course_managment_system/course_module.dart';
import 'package:course_managment_system/course_service.dart';
import 'package:course_managment_system/instructor.dart';
import 'package:course_managment_system/student_module.dart';

void main() {
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
  Instructor instructor = Instructor(
      id: 'student-02', name: 'Ali', email: 'ali@gmail.com', coursesTaught: []);
  Course course101 =
      Course(courseId: '101', courseTitle: 'C-101', courseStudents: []);
  CourseService service = CourseService();
  service.addCourse(course: course101);
  service.assignInstructor(
      courseID: course101.courseId, instructor: instructor);
  service.enrollStudent(courseID: course101.courseId, student: student1);
  service.enrollStudent(courseID: course101.courseId, student: student2);
  course101.displayDetails();
  student1.displayInfo();
  student2.displayInfo();
}
