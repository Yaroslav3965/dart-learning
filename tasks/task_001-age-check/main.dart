void main() {
  int age = 17;
  String result = checkAge(age);
  print(result);
}
String checkAge(int age) {
  if (age <=0) {
    return "Error";
  }
    if (age < 12) {
      return "Child";
    } else if (age >=12 && age <=17) {
      return "Teenager";
    } else if (age >= 18 && age <= 59) {
      return "Adult";
    } else {
      return "Senior";
    }
  }