import 'dart:io';

import 'package:flutter_1/task27Jul/course.dart';
import 'package:flutter_1/task27Jul/coursera.dart';
import 'package:flutter_1/task27Jul/lecture.dart';
import 'package:flutter_1/task27Jul/sheet.dart';
import 'package:flutter_1/task27Jul/teacher.dart';

void main() {
  List<Sheet> sheet = [];
  List<Lecture> lecture = [];
  List<Course> course = [];
  List<Teacher> teacher = [];
  List<Coursera> coursera = [];

  Sheet sh = Sheet();
  Lecture l = Lecture();
  Course c = Course();
  Coursera courser = Coursera();
  Teacher te = Teacher();
  String? contiuoe;

  do {
    print('Choose Your Operation :');
    print(' 1) Login Teacher        7) Add New Sheet  ');
    print(' 2) Register Teacher     8) Delete Sheet  ');
    print(' 3) Add New Course       9) Show Teacher ');
    print(' 4) Delete Course       10) Show Course ');
    print(' 5) Add New Lecture     11) Show Lecture');
    print(' 6) Delete Lecture      12) Show Sheet  ');

    int? choose = int.parse(stdin.readLineSync()!);
    print('------------------------------');
    switch (choose) {
      case 1:
        print('Enter The Teacher\'s Name : ');
        String? name = stdin.readLineSync()!;
        print('Enter The Teacher\'s Password : ');
        String? password = stdin.readLineSync()!;
        courser.loginTeacher(name, password);

        break;
      case 2:
        print('Enter The Teacher\'s Name : ');
        String? name = stdin.readLineSync()!;
        print('Enter The Teacher\'s Email : ');
        String? email = stdin.readLineSync()!;
        print('Enter The Teacher\'s Password : ');
        String? password = stdin.readLineSync()!;
        courser.registerTeacher(name, email, password);
        break;
      case 3:
        {
          c.setCourse();
          te.listCourses.add(c);
        }
        break;
      case 4:
        {
          print('Enter the Name Of The Course To delete : ');
          String? name = stdin.readLineSync()!;
          te.deleteCourse(name);
        }
        break;
      case 5:
        {
          c.addLecture(l);
          lecture.add(l);
        }
        break;
      case 6:
        {
          print('Enter the Name Of The Sheet To delete : ');
          String? name = stdin.readLineSync()!;
          c.deleteLecture(name);
        }
        break;
      case 7:
        {
          c.addSheet(sh);
          sheet.add(sh);
        }
        break;
      case 8:
        {
          print('Enter the Name Of The Sheet To delete : ');
          String? name = stdin.readLineSync()!;
          c.deleteSheet(name);
        }
        break;
      case 9:
        {
          courser.printListTeacher();
        }
        break;
      case 10:
        {
          te.printListCourse();
        }
        break;
      case 11:
        {
          c.printListLecture();
        }
        break;
      case 12:
        {
          c.printListSheet();
        }
        break;

      default:
        print('invalid Choise !');
        break;
    }
    print('------------------------------');
    print('Do You want To Continue with The Program ? ( Yes / No ) ');
    contiuoe = stdin.readLineSync()!;
  } while (contiuoe == 'y' ||
      contiuoe == 'yes' ||
      contiuoe == 'Yes' ||
      contiuoe == 'Y ' ||
      contiuoe == 'YES');
  print('Thanks :) ');
}
