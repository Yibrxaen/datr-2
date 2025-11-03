void main() {
  // ข้อที่ 1
  print("ข้อที่ 1");
  print("Welcome to Dart!");

  // ข้อที่ 2
  print("ข้อที่ 2");
  var planet = "Earth";
  print(planet);

  // ข้อที่ 3
  print("ข้อที่ 3");
  int myAge = 17;
  print(myAge);

  // ข้อที่ 4
  print("ข้อที่ 4");
  double piValue = 3.14159;
  print(piValue);

  // ข้อที่ 5
  print("ข้อที่ 5");
  bool isDartFun = true;
  print(isDartFun);

  // ข้อที่ 6
  print("ข้อที่ 6");
  var a = 15;
  var b = 4;
  var sum = a + b;
  print(sum);

  // ข้อที่ 7
  print("ข้อที่ 7");
  var sum1 = a * b;
  print(sum1);

  // ข้อที่ 8
  print("ข้อที่ 8");
  var name = "Alice";
  var age = 28;
  print("My name is $name and I am $age years old.");

  //  ข้อที่ 9
  print("ข้อที่ 9");
  // var myNumber = 100;
  // myNumber = "Hello";
  // print(myNumber);
  print(
    "ไม่ได้ เพราะ ตัวแปร myNumber ถูกกำหนดให้เป็น int แล้วจึงไม่สามารถเปลี่ยนเป็น String ได้ เพราะ Dart เป็นภาษาที่มีการกำหนดประเภทตัวแปรแบบเข้มงวด (strongly typed language)",
  );

  // ข้อที่ 10
  print("ข้อที่ 10");
  //final city = "Bangkok";
  //final city = "Chiang Mai";
  //print(city);
  print(
    "ไม่ได้ เพราะ ตัวแปร city ถูกประกาศด้วย final ซึ่งหมายความว่าค่าของมันไม่สามารถเปลี่ยนแปลงได้หลังจากที่ถูกกำหนดค่าแล้ว",
  );

  // ข้อที่ 11
  print("ข้อที่ 11");
  const secondsInMinute = 60;
  print(secondsInMinute);

  // ข้อที่ 12
  print("ข้อที่ 12");
  //num flexibleNumber = 50;
  //num flexibleNumber = 75.5;
  //print(flexibleNumber);
  print(
    "ไม่ได้ เพราะ ตัวแปร flexibleNumber ถูกประกาศซ้ำในสโคปเดียวกัน ซึ่งจะทำให้เกิดข้อผิดพลาดในการคอมไพล์ ควรใช้การกำหนดค่าใหม่แทนการประกาศตัวแปรใหม่",
  );

  // ข้อที่ 13
  print("ข้อที่ 13");
  var x = 10;
  var y = 4;
  print(x / y);
  print((x / y).runtimeType);

  // ข้อที่ 14
  print("ข้อที่ 14");
  print(x ~/ y);
  print((x / y).runtimeType);

  // ข้อที่ 15
  print("ข้อที่ 15");
  print(x % y);

  // ข้อที่ 16
  print("ข้อที่ 16");
  var score = 85;
  if (score >= 80) {
    print("True");
  } else {
    print("False");
  }

  // ข้อที่ 17
  print("ข้อที่ 17");
  if (score != 100) {
    print("True");
  } else {
    print("False");
  }

  // ข้อที่ 18
  print("ข้อที่ 18");
  var isMember = true;
  var hasDiscount = false;
  print(isMember && hasDiscount);

  // ข้อที่ 19
  print("ข้อที่ 19");
  isMember = true;
  hasDiscount = false;
  print(isMember || hasDiscount);

  // ข้อที่ 20
  print("ข้อที่ 20");
  isMember = true;
  hasDiscount = false;
  print(!hasDiscount);

  // ข้อที่ 21
  print("ข้อที่ 21");
  int age1 = 25;
  if (age1 > 18) {
    print("You are an adult.");
  }

  // ข้อที่ 22
  print("ข้อที่ 22");
  int number = -5;
  if (number > 0) {
    print("Positive");
  } else {
    print("Negative or Zero");
  }

  // ข้อที่ 23
  print("ข้อที่ 23");
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

  // ข้อที่ 24
  print("ข้อที่ 24");
  var count = 1;
  while (count <= 3) {
    print(count);
    count++;
  }

  // ข้อที่ 25
  print("ข้อที่ 25");
  int score1 = 80;
  String result = score1 >= 60 ? "Pass" : "Fail";
  print(result);

  // ข้อที่ 26
  print("ข้อที่ 26");
  int day = 3;
  switch (day) {
    case 3:
      print("Wednesday");
      break;
    default:
      print("Invalid Day");
  }

  // ข้อที่ 27
  print("ข้อที่ 27");
  for (var i = 1; i <= 10; i++) {
    if (i == 4) break;
    print(i);
  }

  // ข้อที่ 28
  print("ข้อที่ 28");
  for (var i = 1; i <= 5; i++) {
    if (i == 3) continue;
    print(i);
  }

  // ข้อที่ 29
  print("ข้อที่ 29");
  int temp = 28;
  if (temp > 30) {
    print("It's hot.");
  } else if (temp >= 20) {
    print("It's warm.");
  } else {
    print("It's cool.");
  }

  // ข้อที่ 30
  print("ข้อที่ 30");
  int number30 = 5;
  do {
    print(number30);
  } while (number30 < 5);
}