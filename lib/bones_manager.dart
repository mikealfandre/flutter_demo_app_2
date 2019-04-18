import 'package:flutter/material.dart';

import './bones.dart';

class BonesManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BonesManagerState();
  }
}

class _BonesManagerState extends State<BonesManager> {
  //List is just darts way of saying array. Underscore is convention because this is a property that will only be ued by this class.
  List<String> _bones = ['Fibula'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() => {_bones.add('Funny')});
          print(_bones);
        },
        child: Text('Add Helpy'),
      ),
    ),
    Bones(_bones)
    ],);
  }
}
