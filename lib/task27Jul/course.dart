import 'dart:io';

import 'lecture.dart';
import 'sheet.dart';

class Course {
  String? courseName, courseDescription;
  List<Lecture> listLecture = [];
  List<Sheet> listSheet = [];

  Course({String courseName = '', String courseDescription = ''}) {
    this.courseName = courseName;
    this.courseDescription = courseDescription;
  }

  void printCourse() {
    print(' Name Course  : $courseName');
    print(' Description  : $courseDescription');
    print('-----------------------------');
  }

  void setCourse() {
    print('Enter Name Of Course :');
    courseName = stdin.readLineSync()!;
    print('Enter Description of Course :');
    courseDescription = stdin.readLineSync()!;
    print('The Course Has Been Added Successfully :) ');
  }

  void addLecture(Lecture l1) {
    l1.setLecture();
    listLecture.add(l1);
    print('The Lecture Has Been Added Successfully :) ');
  }

  void deleteLecture(String name) {
    if (listLecture.isEmpty) {
      print('There Are No Lectures !');
    } else {
      for (int i = 0; i < listLecture.length; i++) {
        if (listLecture[i].lectureName == name) {
          listLecture.remove(listLecture[i]);
          print('Deleted successfully ');
          print('------------------------------------');
        } else {
          print('There is No Lecture Of This Name !');
        }
      }
    }
  }

  void addSheet(Sheet sh1) {
    sh1.setSheet();
    listSheet.add(sh1);
    print('The Sheet Has Been Added Successfully :) ');
  }

  void deleteSheet(String name) {
    if (listSheet.isEmpty) {
      print('There Are No Sheet !');
    } else {
      for (int i = 0; i < listSheet.length; i++) {
        if (listSheet[i].sheetFileName == name) {
          listSheet.remove(listSheet[i]);
          print('Deleted successfully ');
          print('------------------------------------');
        } else {
          print('There is No Sheet Of This Name !');
        }
      }
    }
  }

  void printListLecture() {
    if (listLecture.isEmpty) {
      print('There Are No Lectures !');
    } else {
      for (int i = 0; i < listLecture.length; i++) {
        print('------ Data of ${listLecture[i].lectureName} Lecture ------');
        listLecture[i].printLecture();
      }
    }
  }

  void printListSheet() {
    if (listSheet.isEmpty) {
      print('There Are No Sheet !');
    } else {
      for (int i = 0; i < listSheet.length; i++) {
        print('------ Data of ${listSheet[i].sheetFileName} Sheet ------');
        listSheet[i].printSheet();
      }
    }
  }
}

/*
    print('Do You Want To Add A Lecture ? ( Yes/ No )');
    String s = stdin.readLineSync()!;
    Lecture l = Lecture();
    switch (s) {
      case 'Yes':
      case 'yes':
      case 'Y':
      case 'y':
        l.setLecture();
        listLecture.add(l);
        print('The Lecture Has Been Added Successfully ');
        break;
      case 'No':
      case 'no':
      case 'N':
      case 'n':
        print('OK :) !');
        break;
      default:
        print('invalid Choise !');
        break;
    }
    print('Do You Want To Add A Sheet ? ( Yes/ No )');
    String b = stdin.readLineSync()!;
    Sheet sh = Sheet();
    switch (b) {
      case 'Yes':
      case 'yes':
      case 'Y':
      case 'y':
        sh.setSheet();
        listSheet.add(sh);
        print('The Sheet Has Been Added Successfully ');
        break;
      case 'No':
      case 'no':
      case 'N':
      case 'n':
        print('OK :) !');
        break;
      default:
        print('invalid Choise !');
    }

 */
