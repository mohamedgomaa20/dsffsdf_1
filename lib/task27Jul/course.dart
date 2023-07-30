import 'lecture.dart';
import 'sheet.dart';

class Course {
  String courseName, courseDescription;
  List<Lecture> lectures = [];
  List<Sheet> sheets = [];

  Course({
    required this.courseDescription,
    required this.courseName,
  });
  void printCourse() {
    print(' Name Course  : $courseName');
    print(' Description  : $courseDescription');
    print('-----------------------------');
  }

  void addLecture(Lecture l1) {
    lectures.add(l1);
    print('The Lecture Has Been Added Successfully :) ');
  }

  void deleteLecture(String name) {
    if (lectures.isEmpty) {
      print('There Are No Lectures !');
    } else {
      for (int i = 0; i < lectures.length; i++) {
        if (lectures[i].lectureName == name) {
          lectures.remove(lectures[i]);
          print('Deleted successfully ');
          print('------------------------------------');
        } else {
          print('There is No Lecture Of This Name !');
        }
      }
    }
  }

  void addSheet(Sheet sh1) {
    sheets.add(sh1);
    print('The Sheet Has Been Added Successfully :) ');
  }

  void deleteSheet(String name) {
    if (sheets.isEmpty) {
      print('There Are No Sheet !');
    } else {
      for (int i = 0; i < sheets.length; i++) {
        if (sheets[i].sheetFileName == name) {
          sheets.remove(sheets[i]);
          print('Deleted successfully ');
          print('------------------------------------');
        } else {
          print('There is No Sheet Of This Name !');
        }
      }
    }
  }

  void printListLecture() {
    if (lectures.isEmpty) {
      print('There Are No Lectures !');
    } else {
      for (int i = 0; i < lectures.length; i++) {
        print('------ Data of ${lectures[i].lectureName} Lecture ------');
        lectures[i].printLecture();
      }
    }
  }

  void printListSheet() {
    if (sheets.isEmpty) {
      print('There Are No Sheet !');
    } else {
      for (int i = 0; i < sheets.length; i++) {
        print('------ Data of ${sheets[i].sheetFileName} Sheet ------');
        sheets[i].printSheet();
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
