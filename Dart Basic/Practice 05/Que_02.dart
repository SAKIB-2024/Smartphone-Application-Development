//Append your friend's name to a file that already has your name
import 'dart:io';

void main() {
  String Name = 'ZORO TARO';
  File file = File('hello.txt');

  file.writeAsStringSync('$friendName\n', mode: FileMode.append);
  print('Friend name appended to hello.txt successfully!');
}
