class Lecture {
  String lectureName;
  String lectureFilName;
  String lectureDescription;

  Lecture({
    required this.lectureDescription,
    required this.lectureFilName,
    required this.lectureName,
  });

  void printLecture() {
    print(' Name Lecture : $lectureName');
    print(' File Name    : $lectureFilName');
    print(' Description  : $lectureDescription');
  }
}
