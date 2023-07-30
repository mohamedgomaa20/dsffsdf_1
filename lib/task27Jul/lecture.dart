import 'dart:io';

class Lecture {
  String? lectureName;
  String? lectureFilName;
  String? lectureDescription;

  void printLecture() {
    print(' Name Lecture : $lectureName');
    print(' File Name    : $lectureFilName');
    print(' Description  : $lectureDescription');
  }

  void setLecture() {
    print('Enter Name Of Lecture :');
    this.lectureName = stdin.readLineSync()!;
    print('Enter File Name Of Lecture :');
    this.lectureFilName = stdin.readLineSync()!;
    print('Enter Description of Lecture :');
    this.lectureDescription = stdin.readLineSync()!;
    print('----------------------------');
  }
}
