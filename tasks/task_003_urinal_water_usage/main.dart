void main() {
  int liters1 = 8;
  int liters2 = 20;
  int liters3 = 45;

  print(getWaterStatus(liters1));
  print(getWaterStatus(liters2));
  print(getWaterStatus(liters3));
}

String getWaterStatus(int liters) {
  if (liters < 0){
    return "error";
  }
  if (liters < 10) {
    return 'Low water usage';
  } else if (liters <= 30) {
    return 'Normal water usage';
  } else {
    return 'Too much water';
  }
}