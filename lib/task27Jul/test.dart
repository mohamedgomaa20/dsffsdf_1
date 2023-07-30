/*
import 'dart:io';

import 'package:flutter_1/task27Jul/course.dart';
import 'package:flutter_1/task27Jul/coursera.dart';
import 'package:flutter_1/task27Jul/lecture.dart';
import 'package:flutter_1/task27Jul/sheet.dart';
import 'package:flutter_1/task27Jul/teacher.dart';

void main() {
  // List<Sheet> sheet = [];
  // List<Lecture> lecture = [];
  // List<Course> course = [];
  // List<Teacher> teacher = [];
  // List<Coursera> coursera = [];
  //
  Sheet sh = Sheet();
  Lecture l = Lecture();
  Course c = Course();
  Coursera courser = Coursera();
  Teacher t = Teacher();
  String? contiuoe;
  do {
    print('Choose Your Operation :');
    print(' 1) Add New Course       6) Delete Sheet  ');
    print(' 2) Delete Course        7) Show Teacher ');
    print(' 3) Add New Lecture      8) Show Course ');
    print(' 4) Delete Lecture       9) Show Lecture');
    print(' 5) Add New Sheet       10) Show Sheet  ');
    // print(' 6) Delete Sheet ');
    // print(' 7) Show Teacher ');
    // print(' 8) Show Course ');
    // print(' 9) Show Lecture ');
    // print('10) Show Sheet ');
    int? choose = int.parse(stdin.readLineSync()!);
    print('------------------------------');
    switch (choose) {
      case 1:
        {
          t.addCourse(c);
        }
        break;
      case 2:
        {
          print('Enter the Name Of The Course To delete : ');
          String? name = stdin.readLineSync()!;
          t.deleteCourse(name);
        }
        break;
      case 3:
        {
          c.addLecture(l);
          // lecture.add(l);
          // c.listLecture.add(l);
        }
        break;
      case 4:
        {
          print('Enter the Name Of The Lecture To delete : ');
          String? name = stdin.readLineSync()!;
          c.deleteLecture(name);
        }
        break;
      case 5:
        {
          c.addSheet(sh);
        }
        break;
      case 6:
        {
          print('Enter the Name Of The Sheet To delete : ');
          String? name = stdin.readLineSync()!;
          // c.deleteSheet(name);
        }
        break;
      case 7:
        {
          courser.printListTeacher();
        }
        break;
      case 8:
        {
          t.printListCourse();
        }
        break;
      case 9:
        {
          c.printListLecture();
        }
        break;
      case 10:
        {
          c.printListSheet();
        }
        break;
      default:
        print('invalid Choise !');
        break;
    }
    print('Do You want To Continue with The Program ? ( Yes / No ) ');
    contiuoe = stdin.readLineSync()!;
  } while (contiuoe == 'y' ||
      contiuoe == 'yes' ||
      contiuoe == 'Yes' ||
      contiuoe == 'Y ' ||
      contiuoe == 'YES');
  print('Thanks :) ');

  //----------------------------------
  // List<Lecture> list = [];
  // Lecture lec = Lecture();
  // lec.setLecture();
  // lec.printLecture();
  // list.add(lec);
  // list.forEach((element) {
  //   print('----- Data of Lecture -----');
  //   element.printLecture();
  // });

  //----------------------------------
  // List<Sheet> list2 = [];
  // Sheet sh = Sheet();
  // sh.setSheet();
  // sh.printSheet();
  // list2.add(sh);
  // list2.forEach((element) {
  //   print('----- Data of Lecture -----');
  //   element.printSheet();
  // });
  //----------------------------------
  // List<Course> list3 = [];
  // Course c = Course();
  // c.setCourse();
  // c.printCourse();
  // print(' ');
  // list3.add(c);
  // list3.forEach((element) {
  //   element.printCourse();
  // });
  //----------------------------------
}
*/
