import 'dart:io';

class Sheet {
  int? sheetNumber;
  String? sheetFileName;
  String? sheetDescription;

  Sheet(
      {int sheetNumber = 0,
      String sheetFileName = '',
      String sheetDescription = ''}) {
    this.sheetNumber = sheetNumber;
    this.sheetFileName = sheetFileName;
    this.sheetDescription = sheetDescription;
  }

  void printSheet() {
    print('File Name Sheet  : $sheetFileName');
    print('Number      : $sheetNumber');
    print('Description : $sheetDescription');
  }

  void setSheet() {
    print('Enter Name Of Sheet :');
    this.sheetFileName = stdin.readLineSync()!;
    print('Enter Number Of Sheet :');
    this.sheetNumber = int.parse(stdin.readLineSync()!);
    print('Enter Description of Sheet :');
    this.sheetDescription = stdin.readLineSync()!;
    print('----------------------------');
  }
}
