import 'package:flutter/material.dart';
import 'package:isadora/models/students.dart';
import 'package:isadora/widgets/animated_list_bg.dart';
import 'package:isadora/widgets/drawer.dart';
import 'package:isadora/widgets/student_card.dart';

class StudentsList extends StatelessWidget {
  ScrollController _controller = new ScrollController();

  List<StudentCard> get _cards =>
      items.map((Student _item) => StudentCard(_item)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("ISADORA"), /*automaticallyImplyLeading: false*/
        ),
        drawer: CustomDrawer(),
        body:
            Stack(alignment: AlignmentDirectional.topStart, children: <Widget>[
          AnimatedBackground(controller: _controller),
          Center(
            child: ListView(controller: _controller, children: _cards),
          )
        ]));
  }
}
