import 'package:flutter/material.dart';
import 'package:isadora/models/students.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class StudentCard extends StatelessWidget {
  StudentCard(this.item);
  final Student item;

  static final Shadow _shadow =
      Shadow(offset: Offset(2.0, 2.0), color: Colors.black26);
  final TextStyle _style = TextStyle(color: Colors.white70, shadows: [_shadow]);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.black26),
              borderRadius: BorderRadius.circular(32)),
          color: item.color.withOpacity(.9),
          child: Container(
              constraints: BoxConstraints.expand(height: 128),
              child: RawMaterialButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(item.name, style: _style.copyWith(fontSize: 64)),
                          Icon(item.icon, color: Colors.white70, size: 72),
                        ])
                  ],
                ),
              ))),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => {},
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () => {},
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () => {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => {},
        ),
      ],
    );
  }
}
