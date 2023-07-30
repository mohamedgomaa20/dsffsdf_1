import 'teacher.dart';

class Coursera {
  List<Teacher> teachers = [];

  void registerTeacher(String n, String em, String pass) {
    teachers.add(Teacher(
        teacherName: n, teacherEmail: em, teacherPassword: pass, courses: []));
    print('Registered Successfully :) ');
  }

  void loginTeacher(String name, String password) {
    if (teachers.isEmpty) {
      print('There Are No Teachers !');
    } else {
      for (int i = 0; i < teachers.length; i++) {
        if (teachers[i].teacherName == name &&
            teachers[i].teacherPassword == password) {
          print('Login successfully ');
        } else if (teachers[i].teacherName == name &&
            teachers[i].teacherPassword != password) {
          print('Wrong in Password !');
        } else {
          print('This Teacher is Not Exist !');
        }
      }
    }
  }

  void printListTeacher() {
    if (teachers.isEmpty) {
      print('There Are No Teachers !');
    } else {
      for (int i = 0; i < teachers.length; i++) {
        print('------ Data of Teacher No.${i + 1} ------');
        teachers[i].printTeacher();
      }
    }
  }
}
