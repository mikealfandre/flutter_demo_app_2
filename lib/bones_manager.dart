import 'package:flutter/material.dart';

import './bones.dart';

class BonesManager extends StatefulWidget {
  final String startingBone;
  //Adding the curley braces creates a name for the argument. so now when you call 'BonesManager' in main.dart you state the argument : then declare the argument. You can also put default arguments and then just call BonesManager without an argument.
  BonesManager({this.startingBone = "Funny Bone"}) {
    print('BonesManager Widget Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('BonesManager Widget createState()');
    return _BonesManagerState();
  }
}

class _BonesManagerState extends State<BonesManager> {
  //const keyword in dart means that the variable in un-modifiable, cannot be changed in any way. Final is what const is in JS.
  //List is just darts way of saying array. Underscore is convention because this is a property that will only be ued by this class.
  List<String> _bones = const [];

  @override
  //initState is basically ComponentDidMount
    void initState() {
      print('BonesManager State initState()');
      //widget. is a property of flutter's State widget
      _bones.add(widget.startingBone);
      super.initState();
    }

    @override
    // this 'oldWidget' takes the state of the old widget or what the widget was just before it updated
    // didupdatewidget is good for if Widget is receiving external data that can change.
      void didUpdateWidget(BonesManager oldWidget) {
        print('BonesManager State DidupdateWidget()');
        super.didUpdateWidget(oldWidget);
      }

      //this is a method that is "Lifting the state up" meaning it passes state upwards. I don't think it will work herre just an example.
      // void _addBones(String bone) {
      //   setState(() => {
      //     _bones.add(startingBone)
      //   })
      // }

  @override
  Widget build(BuildContext context) {
    print('BonesManager State Build');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        //context calls upon the build context which automatically can read the Theme declared in main.dart
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() => {_bones.add('Funny')});
          print(_bones);
        },
        child: Text('Add Helpy'),
      ),
    ),
    //This is how you pass props down to components
    Bones(_bones)
    ],);
  }
}
