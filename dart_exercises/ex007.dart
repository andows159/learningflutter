main() {
  //point notation

  double score = 6.99.roundToDouble();
  print(score);
  //string crop
  String s1 = "Gerssivaldo Santos";
  String s2 = s1.substring(0, 3);
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(15, "!!!!");
  print(s4);
}
