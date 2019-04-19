import 'package:flutter/material.dart';

class Bones extends StatelessWidget {
//final keyword tells dart this this variable is unchangeable. It is declared once and immutable. Will work without it, but best practice to define the type.
  //This stores the passed in data 'bones' from the constructor as a variable. Like De-structuring. 'Bones' is a prop passed down from BonesManager like this (Bones(_bones))
  final List<String> bones;

  //This is a constructor. This is like props passed. Does the '.this' keyword have the context of the OrefAppState class from main.dart?
  Bones(this.bones) {
    
  }

  @override
  Widget build(BuildContext context) {
    print('[Bones Widget] build()');
    return Column(
      children: bones
          .map((el) => Card(
            //The Card widget takes in arguments, one of which is 'child' which is the content. The <Widget> syntax means the following array will hold ONLY Widgets. A Widget is an object.
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/skeleton.jpg'),
                    Text(el)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
