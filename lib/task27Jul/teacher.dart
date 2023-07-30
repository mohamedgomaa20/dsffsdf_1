import 'course.dart';

class Teacher {
  String? teacherName;
  String? teacherEmail;
  String? teacherPassword;
  List<Course> listCourses = [];

  Teacher({String name = '', String email = '', String password = ''}) {
    this.teacherName = name;
    this.teacherEmail = email;
    this.teacherPassword = password;
  }
  void addCourse(Course c) {
    listCourses.add(c);
  }

  void printListCourse() {
    if (listCourses.isEmpty) {
      print('There Are No Courses !');
    } else {
      for (int i = 0; i < listCourses.length; i++) {
        print('------ Data of ${listCourses[i].courseName} Course ------');

        listCourses[i].printCourse();
      }
    }
  }

  void deleteCourse(String name) {
    if (listCourses.isEmpty) {
      print('There Are No Courses !');
    } else {
      for (int i = 0; i < listCourses.length; i++) {
        if (listCourses[i].courseName == name) {
          listCourses.remove(listCourses[i]);
          print('Deleted successfully ');
          print('-----------------------------');
        } else {
          print('There is No Course Of This Name !');
        }
      }
    }
  }

  void printTeacher() {
    print(' Name     : $teacherName');
    print(' Email    : $teacherEmail');
    print(' Password : $teacherPassword');
  }

  void showListCourse() {
    if (listCourses.isEmpty) {
      print('There Are No Courses !');
    } else {
      listCourses.forEach((element) {
        print('------ Data of ${listCourses.indexOf(element)} Course ------');
        print(' Name Course  : ${element.courseName}');
        print(' Description  : ${element.courseDescription}');
        print('-----------------------------');
      });
    }
  }
}
