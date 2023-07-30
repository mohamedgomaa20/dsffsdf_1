import 'course.dart';

class Teacher {
  Teacher({
    required this.teacherName,
    required this.teacherEmail,
    required this.teacherPassword,
    required this.courses,
  });

  String teacherName;
  String teacherEmail;
  String teacherPassword;
  List<Course> courses = [];
  void printListCourse() {
    if (courses.isEmpty) {
      print('There Are No Courses !');
    } else {
      for (int i = 0; i < courses.length; i++) {
        print('------ Data of ${courses[i].courseName} Course ------');

        courses[i].printCourse();
      }
    }
  }

  void printTeacher() {
    print(' Name     : $teacherName');
    print(' Email    : $teacherEmail');
    print(' Password : $teacherPassword');
  }

  void addCourse(Course c) {
    courses.add(c);
  }

  void deleteCourse(String name) {
    if (courses.isEmpty) {
      print('There Are No Courses !');
    } else {
      for (int i = 0; i < courses.length; i++) {
        if (courses[i].courseName == name) {
          courses.remove(courses[i]);
          print('Deleted successfully ');
          print('-----------------------------');
        } else {
          print('There is No Course Of This Name !');
        }
      }
    }
  }

  void showListCourse() {
    if (courses.isEmpty) {
      print('There Are No Courses !');
    } else {
      courses.forEach((element) {
        print('------ Data of ${courses.indexOf(element)} Course ------');
        print(' Name Course  : ${element.courseName}');
        print(' Description  : ${element.courseDescription}');
        print('-----------------------------');
      });
    }
  }
}
