import 'course_module.dart';
import 'user_module.dart';

class Instructor extends User {
   List<Course> coursesTaught = [];
  Instructor(
      { required this.coursesTaught,
      required super.id,
      required super.name,
      required super.email});
}
