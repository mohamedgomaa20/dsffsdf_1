class Sheet {
  int sheetNumber;
  String sheetFileName;
  String sheetDescription;

  Sheet({
    required this.sheetDescription,
    required this.sheetFileName,
    required this.sheetNumber,
  });
  void printSheet() {
    print('File Name Sheet  : $sheetFileName');
    print('Number      : $sheetNumber');
    print('Description : $sheetDescription');
  }
}
