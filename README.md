# Course Management System

A simple command-line application for managing courses, students, and instructors. It demonstrates core Object-Oriented Programming (OOP) concepts in Dart.

## Project Structure
- `bin/`: Entry point for the application.
- `lib/`: Contains all library code (models, services, logic).
- `test/`: Example unit tests.

## How to Run
1. Ensure you have Dart SDK installed.
2. Clone the repository and navigate to the project directory.
3. Run the main program:
   ```
   dart run lib/course_managment_system.dart
   ```

## OOP Concepts Used
- **Abstraction**: The `User` class is abstract, providing a template for user types.
- **Inheritance**: `Student` and `Instructor` inherit from `User`.
- **Encapsulation**: User data is private with public getters/setters.
- **Polymorphism**: `displayInfo()` is overridden in `Student`.
- **Composition**: `Course` contains lists of `Student` and a reference to `Instructor`.

## Features
- Add and remove courses
- Assign instructors to courses
- Enroll students in courses
- Display course and student details

---

