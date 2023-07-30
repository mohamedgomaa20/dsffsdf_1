import 'dart:io';

import 'package:flutter_1/task27Jul/course.dart';
import 'package:flutter_1/task27Jul/coursera.dart';
import 'package:flutter_1/task27Jul/lecture.dart';
import 'package:flutter_1/task27Jul/sheet.dart';
import 'package:flutter_1/task27Jul/teacher.dart';

void main() {
  Coursera coursera = Coursera();
  Teacher? teacher;
  Course? course;
  String input;
  do {
    print('Choose Your Operation :');
    print(' 1) Login Teacher        7) Add New Sheet  ');
    print(' 2) Register Teacher     8) Delete Sheet  ');
    print(' 3) Add New Course       9) Show Teacher ');
    print(' 4) Delete Course       10) Show Course ');
    print(' 5) Add New Lecture     11) Show Lecture');
    print(' 6) Delete Lecture      12) Show Sheet  ');

    int choose = int.parse(stdin.readLineSync().toString());
    print('------------------------------');
    switch (choose) {
      case 1:
        print('Enter The Teacher\'s Name : ');
        String? name = stdin.readLineSync()!;
        print('Enter The Teacher\'s Password : ');
        String? password = stdin.readLineSync()!;
        coursera.loginTeacher(name, password);

        break;
      case 2:
        print('Enter The Teacher\'s Name : ');
        String? name = stdin.readLineSync()!;
        print('Enter The Teacher\'s Email : ');
        String? email = stdin.readLineSync()!;
        print('Enter The Teacher\'s Password : ');
        String? password = stdin.readLineSync()!;
        coursera.registerTeacher(name, email, password);
        break;
      case 3:
        {
          print('Enter Name Of Course :');
          String courseName = stdin.readLineSync().toString();
          print('Enter Description of Course :');
          String courseDescription = stdin.readLineSync().toString();
          print('The Course Has Been Added Successfully :) ');
          teacher!.courses.add(Course(
            courseDescription: courseDescription,
            courseName: courseName,
          ));
        }
        break;
      case 4:
        {
          print('Enter the Name Of The Course To delete : ');
          String? name = stdin.readLineSync()!;
          teacher!.deleteCourse(name);
        }
        break;
      case 5:
        {
          print('Enter Name Of Lecture :');
          String lectureName = stdin.readLineSync().toString();
          print('Enter File Name Of Lecture :');
          String lectureFilName = stdin.readLineSync().toString();
          print('Enter Description of Lecture :');
          String lectureDescription = stdin.readLineSync().toString();
          print('----------------------------');
          course!.lectures.add(Lecture(
            lectureDescription: lectureDescription,
            lectureFilName: lectureFilName,
            lectureName: lectureName,
          ));
        }
        break;
      case 6:
        {
          print('Enter the Name Of The Sheet To delete : ');
          String name = stdin.readLineSync().toString();
          course!.deleteLecture(name);
        }
        break;
      case 7:
        {
          print('Enter Name Of Sheet :');
          String sheetFileName = stdin.readLineSync().toString();
          print('Enter Number Of Sheet :');
          int sheetNumber = int.parse(stdin.readLineSync().toString());
          print('Enter Description of Sheet :');
          String sheetDescription = stdin.readLineSync().toString();
          print('----------------------------');
          course!.addSheet(Sheet(
            sheetDescription: sheetDescription,
            sheetFileName: sheetFileName,
            sheetNumber: sheetNumber,
          ));
        }
        break;
      case 8:
        {
          print('Enter the Name Of The Sheet To delete : ');
          String? name = stdin.readLineSync()!;
          course!.deleteSheet(name);
        }
        break;
      case 9:
        {
          coursera.printListTeacher();
        }
        break;
      case 10:
        {
          teacher!.printListCourse();
        }
        break;
      case 11:
        {
          course!.printListLecture();
        }
        break;
      case 12:
        {
          course!.printListSheet();
        }
        break;

      default:
        print('invalid input !');
        break;
    }
    print('------------------------------');
    print('Do You want To Continue with The Program ? ( Yes / No ) ');
    input = stdin.readLineSync().toString().toLowerCase();
  } while (input == 'y' || input == 'yes');
  print('Thanks :) ');
}
