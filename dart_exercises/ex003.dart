//imports in dart and users inputs
import 'dart:io';

main() {
  //how to receive user inputs in dart:
  //(only inputs of string type)
  var user_input = stdin.readLineSync();
  print('the user input is : ' + user_input);
}
