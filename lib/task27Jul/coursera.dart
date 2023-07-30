import 'teacher.dart';

class Coursera {
  List<Teacher> listTeacher = [];
  Teacher t = Teacher();

  void registerTeacher(String n, String em, String pass) {
    Teacher t = Teacher(name: n, email: em, password: pass);
    listTeacher.add(t);
    print('Registered Successfully :) ');
  }

  void loginTeacher(String name, String password) {
    if (listTeacher.isEmpty) {
      print('There Are No Teachers !');
    } else {
      for (int i = 0; i < listTeacher.length; i++) {
        if (listTeacher[i].teacherName == name &&
            listTeacher[i].teacherPassword == password) {
          print('Login successfully ');
        } else if (listTeacher[i].teacherName == name &&
            listTeacher[i].teacherPassword != password) {
          print('Wrong in Password !');
        } else {
          print('This Teacher is Not Exist !');
        }
      }
    }
  }

  void printListTeacher() {
    if (listTeacher.isEmpty) {
      print('There Are No Teachers !');
    } else {
      for (int i = 0; i < listTeacher.length; i++) {
        print('------ Data of Teacher No.${i + 1} ------');
        listTeacher[i].printTeacher();
      }
    }
  }
}
