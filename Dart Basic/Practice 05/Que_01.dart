// Write a dart program to add your name to “hello.txt” file.
import 'dart:io';

void main() {
  String name = 'Mahmudul Hasan Sakib';
  File file = File('hello.txt');
  file.writeAsStringSync('$name\n', mode: FileMode.append);
  print('Name added to hello.txt successfully!');
}
