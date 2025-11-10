import 'dart:math';

// Dart Practice 3 (Functions & OOP)
// แบบฝึกปฏิบัติภาษา Dart 3: ฟังก์ชัน และ การเขียนโปรแกรมเชิงวัตถุ
// คำตอบและการพิมพ์เป็นภาษาไทย ตามลำดับข้อที่ร้องขอ

// ------------------ Helper Classes & Types ------------------

class Car {
	String? color;
	int? year;

	void drive() {
		if (color != null) {
			print('Driving the $color car...');
		} else {
			print('The car is driving...');
		}
	}

	static const int numberOfWheels = 4;
}

class Book {
	String title;
	int pages;
	Book(this.title, this.pages);
}

class MathHelper {
	static int add(int a, int b) => a + b;
}

class User {
	String username;
	User(this.username);
	User.guest() : username = 'Guest';
}

class CirclePart1 {
	double radius;
	CirclePart1(this.radius);
	double get area => pi * radius * radius;
}

class BankAccount {
	double _balance = 0;
	set deposit(double amount) {
		if (amount > 0) _balance += amount;
	}
	double get balance => _balance;
}

class DatabaseConnection {
	static int connectionCount = 0;
	DatabaseConnection() {
		connectionCount++;
	}
}

// OOP Part 2 helpers
class Vehicle {
	void move() => print('Moving...');
}

class CarChild extends Vehicle {
	@override
	void move() => print('Driving the car...');
}

enum TrafficLight { red, yellow, green }

mixin Flyer {
	void fly() => print('I am flying!');
}

class Bird with Flyer {}

class Person {
	String name;
	Person(this.name);
}

class Student extends Person {
	int studentId;
	Student(String name, this.studentId) : super(name);
}

abstract class Database {
	void connect();
}

class MySQLDatabase extends Database {
	@override
	void connect() => print('Connecting to MySQL...');
}

abstract class Logger {
	void log(String message);
}

class ConsoleLogger implements Logger {
	@override
	void log(String message) => print('LOG: $message');
}

class Animal {
	void eat() => print('Animal is eating.');
}

class Dog extends Animal {
	@override
	void eat() {
		super.eat();
		print('Dog is eating bones.');
	}
}

mixin Walker { void walk() => print('Walking...'); }
mixin Swimmer { void swim() => print('Swimming...'); }

class Duck with Walker, Swimmer {}

void checkLight(TrafficLight light) {
	switch (light) {
		case TrafficLight.red:
			print('STOP');
			break;
		case TrafficLight.yellow:
			print('WAIT');
			break;
		case TrafficLight.green:
			print('GO');
			break;
	}
}

abstract class Shape {
	String color;
	Shape(this.color);
	double getArea();
}

class Circle extends Shape {
	double radius;
	Circle(this.radius, String color) : super(color);
	@override
	double getArea() => pi * radius * radius;
}

// ------------------ Functions ------------------

void printMyName() {
	print('ฉันชื่อเล่น: (ใส่ชื่อเล่นของคุณที่นี่)');
}

int getCurrentYear() => DateTime.now().year;

int multiply(int a, int b) => a * b;

void sayGoodbye() => print('Goodbye!');

void showUserDetails({String? name, int? age}) {
	print('Name: ${name ?? 'ไม่ระบุ'}, Age: ${age ?? 'ไม่ระบุ'}');
}

void showUserDetailsRequired({required String name, int? age}) {
	print('Required - Name: $name, Age: ${age ?? 'ไม่ระบุ'}');
}

bool isEven(int number) => number % 2 == 0;

void logMessage(String message, [String level = 'INFO']) {
	print('[$level] $message');
}

void processNumbers(List<int> list, void Function(int) action) {
	for (var n in list) action(n);
}

void printSquare(int n) => print(n * n);

// ------------------ main (เรียงข้อเป็นภาษาไทย) ------------------
void main() {
	// โครงสร้างข้อมูล (Collections)
	print('ข้อที่ 1');
	List animals = ['Tiger', 'Lion', 'Cat'];
	print(animals[1]); // พิมพ์สมาชิกตัวที่ 2 (Index 1)

	print('\nข้อที่ 2');
	animals.add('Dog');
	print(animals);

	print('\nข้อที่ 3');
	print('จำนวนสมาชิก = ${animals.length}');

	print('\nข้อที่ 4');
	Map<String, int> studentScore = {'math': 90, 'english': 85};
	print('math = ${studentScore['math']}');

	print('\nข้อที่ 5');
	Set<int> uniqueNumbers = {10, 20, 10, 30, 20};
	// เมื่อพิมพ์ออกมา Set จะเก็บค่าแบบไม่ซ้ำ
	print(uniqueNumbers);

	print('\nข้อที่ 6');
	List colors = ['Red', 'Green', 'Blue'];
	colors.removeAt(1); // ลบ 'Green'
	print(colors);

	print('\nข้อที่ 7');
	List<int> numbers = [5, 10, 15, 10];
	print(numbers.indexOf(10)); // ตำแหน่งแรกของ 10

	print('\nข้อที่ 8');
	List<String> names = <String>[];
	names.add('John');
	// names.add(123); // หาก uncomment จะเกิด compile-time error
	print(names);

	print('\nข้อที่ 9');
	for (var a in animals) print('Animal: $a');

	print('\nข้อที่ 10');
	print(studentScore.containsKey('science'));

	print('\nข้อที่ 11');
	List<int> listA = [1, 2];
	List<int> listB = [3, 4];
	List<int> combined = [0, ...listA, ...listB, 5];
	print(combined);

	print('\nข้อที่ 12');
	bool isPremiumUser = false;
	List<String> features = ['Basic Feature', if (isPremiumUser) 'Premium Feature'];
	print(features);

	print('\nข้อที่ 13');
	List<int> original = [1, 2, 3];
	List<int> squares = [for (var v in original) v * v];
	print(squares);

	print('\nข้อที่ 14');
	studentScore.forEach((k, v) => print('Subject: $k, Score: $v'));

	print('\nข้อที่ 15');
	print('คำอธิบาย: Set เก็บค่าแบบไม่ซ้ำ (unique) ดังนั้นค่าที่ซ้ำกันจะถูกตัดออก จึงเหลือเพียง 10, 20, 30');

	// ฟังก์ชัน (Functions)
	print('\nFunctions - ข้อที่ 1');
	printMyName();

	print('\nFunctions - ข้อที่ 2');
	print(getCurrentYear());

	print('\nFunctions - ข้อที่ 3');
	print(multiply(3, 4));

	print('\nFunctions - ข้อที่ 4');
	sayGoodbye();

	print('\nFunctions - ข้อที่ 5');
	print(multiply(10, 5));

	print('\nFunctions - ข้อที่ 6');
	showUserDetails(name: null, age: null);

	print('\nFunctions - ข้อที่ 7');
	showUserDetails(age: 30, name: 'David');

	print('\nFunctions - ข้อที่ 8');
	void greet({required String name, String greeting = 'Hello'}) {
		print('$greeting, $name');
	}
	greet(name: 'Alice');
	greet(name: 'Bob', greeting: 'Hi');

	print('\nFunctions - ข้อที่ 9');
	showUserDetailsRequired(name: 'Eva', age: 22);

	print('\nFunctions - ข้อที่ 10');
	List<int> nums = [1, 2, 3];
	nums.forEach((n) => print('Number: $n'));

	print('\nFunctions - ข้อที่ 11');
	print(isEven(4));

	print('\nFunctions - ข้อที่ 12');
	logMessage('Error found');
	logMessage('Critical error', 'ERROR');

	print('\nFunctions - ข้อที่ 13');
	processNumbers([1, 2, 3], printSquare);

	print('\nFunctions - ข้อที่ 14');
	processNumbers([1, 2, 3], printSquare);

	print('\nFunctions - ข้อที่ 15');
	processNumbers([10, 20], (n) => print('Value: $n'));

	// การเขียนโปรแกรมเชิงวัตถุ (OOP) - ตอนที่ 1
	print('\nOOP Part1 - ข้อที่ 1');
	var myCar = Car();
	print('สร้าง object myCar จากคลาส Car');

	print('\nOOP Part1 - ข้อที่ 2');
	myCar.color = 'Red';
	myCar.year = 2021;
	print(myCar.color);

	print('\nOOP Part1 - ข้อที่ 3');
	var myCar2 = Car();
	myCar2.drive();

	print('\nOOP Part1 - ข้อที่ 4');
	myCar.color = 'Red';
	print('Driving the ${myCar.color} car...');

	print('\nOOP Part1 - ข้อที่ 5');
	print('Car.numberOfWheels = ${Car.numberOfWheels}');

	print('\nOOP Part1 - ข้อที่ 6');
	var myBook = Book('Dart Basics', 200);
	print('Book: ${myBook.title}, pages: ${myBook.pages}');

	print('\nOOP Part1 - ข้อที่ 7');
	// myBook สร้างแล้วข้างต้น

	print('\nOOP Part1 - ข้อที่ 8');
	print(MathHelper.add(15, 30));

	print('\nOOP Part1 - ข้อที่ 9');
	var guestUser = User.guest();
	print('guest username: ${guestUser.username}');

	print('\nOOP Part1 - ข้อที่ 10');
	var c1 = CirclePart1(2.0);
	print('Circle area (part1): ${c1.area}');

	print('\nOOP Part1 - ข้อที่ 11');
	var myAccount = BankAccount();
	myAccount.deposit = 100;
	myAccount.deposit = -50; // จะถูกละเลยเพราะ amount <= 0
	print('myAccount.balance: ${myAccount.balance}');

	print('\nOOP Part1 - ข้อที่ 12');
	// setter deposit และ getter balance ใช้ได้แล้ว

	print('\nOOP Part1 - ข้อที่ 13');
	print('balance getter used above -> ${myAccount.balance}');

	print('\nOOP Part1 - ข้อที่ 14');
	DatabaseConnection.connectionCount = 0;
	DatabaseConnection();
	DatabaseConnection();
	DatabaseConnection();
	print('DatabaseConnection.connectionCount = ${DatabaseConnection.connectionCount}');

	// การเขียนโปรแกรมเชิงวัตถุ (OOP) - ตอนที่ 2
	print('\nOOP Part2 - ข้อที่ 1');
	var vehicle = Vehicle();
	vehicle.move();

	print('\nOOP Part2 - ข้อที่ 2');
	var carChild = CarChild();
	carChild.move();

	print('\nOOP Part2 - ข้อที่ 3');
	// เมธอด move ถูก override ใน CarChild แล้ว

	print('\nOOP Part2 - ข้อที่ 4');
	print(TrafficLight.values);

	print('\nOOP Part2 - ข้อที่ 5');
	var bird = Bird();
	bird.fly();

	print('\nOOP Part2 - ข้อที่ 6');
	var student = Student('Alice', 123);
	print('Student: ${student.name}, id: ${student.studentId}');

	print('\nOOP Part2 - ข้อที่ 7');
	print('คำตอบ: การสร้างอ็อบเจกต์จาก abstract class เช่น var db = Database(); จะเกิดข้อผิดพลาด เพราะ abstract class อาจมีเมธอดนามธรรมที่ไม่มีการนิยามการทำงาน');

	print('\nOOP Part2 - ข้อที่ 8');
	print('ใน abstract class Database มีเมธอดนามธรรม connect() ที่ยังไม่ถูกนิยาม');

	print('\nOOP Part2 - ข้อที่ 9');
	var mysql = MySQLDatabase();
	mysql.connect();

	print('\nOOP Part2 - ข้อที่ 10');
	var logger = ConsoleLogger();
	logger.log('This is a log');

	print('\nOOP Part2 - ข้อที่ 11');
	var dog = Dog();
	dog.eat();

	print('\nOOP Part2 - ข้อที่ 12');
	print('คำอธิบาย: extends จะสืบทอดการทำงานและโครงสร้างจากคลาสแม่ ส่วน implements จะทำให้คลาสต้องนิยามเมธอดทั้งหมดของ interface ที่ implements');

	print('\nOOP Part2 - ข้อที่ 13');
	var duck = Duck();
	duck.walk();
	duck.swim();

	print('\nOOP Part2 - ข้อที่ 14');
	checkLight(TrafficLight.red);
	checkLight(TrafficLight.yellow);
	checkLight(TrafficLight.green);

	print('\nOOP Part2 - ข้อที่ 15');
	var circle2 = Circle(3.0, 'blue');
	print('Circle area (part2): ${circle2.getArea()}');
}

