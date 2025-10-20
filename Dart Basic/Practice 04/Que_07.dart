// Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
void main() {
    Map<String,dynamic>Mp={
        'SAKIB' : '123123213',
        'Nafi'  : '3758457',
        'Ani'   : '3423434',
        'EEE'   : '1123'
    };
    var ans = Mp.keys.where((key) => key.length == 4);
    print('Keys with length 4: ${ans.join(', ')}');
}

