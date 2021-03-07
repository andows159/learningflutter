import 'dart:io';

//how to convert primitive types
main() {
  var user_age_in_string = stdin.readLineSync();
  var user_age_in_double = double.parse(user_age_in_string);
  print("The value of age is : " + user_age_in_double.toString());
}
