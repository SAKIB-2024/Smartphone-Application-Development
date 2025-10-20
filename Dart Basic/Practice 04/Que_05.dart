// Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

import 'dart:io';
void main() {
    List<String> Friends_and_History= [];
    Friends_and_History.addAll(['Nafi', 'Akash', 'Aniruddha', 'Sakil','Sabiha', 'Umama','Pushpita','Saifa',
                                'Fawziya','Bushra','Rimuna','Mehrin','Shahrin','Sharmin','EEE','D-section','Abrar']);
    var names =  Friends_and_History.where((i) => i.startsWith('A'));
    print('STARS WITH A :- ${names.join(', ')}');
}

