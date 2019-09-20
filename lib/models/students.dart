import 'package:flutter/material.dart';

class Student {

	String name;
	String description;
	MaterialColor color;
	IconData icon;
	Student(this.name, this.description, this.color, this.icon);
}

List<Student> items = [
	Student('A', "Something cool", Colors.amber, Icons.ac_unit),
	Student('B', "Hey, why not?", Colors.cyan, Icons.add_photo_alternate),
	Student('C', "This might be OK", Colors.indigo, Icons.airplay),
	Student('D', "Totally awesome", Colors.green, Icons.crop),
	Student('E', "Rockin out", Colors.pink, Icons.album),
	Student('F', "Take a look", Colors.blue, Icons.adb)
];