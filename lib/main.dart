import 'package:flutter/material.dart';

import './bones_manager.dart';

//Add 'void' to indicate that this method doesn't return anything. Strongly recommended to use these types with Dart
// void main() {
//   //Needs to call runApp which is provided by flutter ^ requires a Widget as an argument.
//   runApp(OrefApp());
// }

//Can write as arrow function as well. This is what writes the code to the screen.
void main() => runApp(OrefApp());

//Stateless widget cannot change, or accept external data, etc. We need to use a stateful Widget here.
class OrefApp extends StatelessWidget {
  //@override is just an annotation to let others know that we are deliberately ovverriding the stateless widget. Still works fine without including it.
  @override
  Widget build(BuildContext context) {
    // A widget always needs to return another wodget in the build method.
    // (MaterialApp) This widget returns (wrapper for) your entire app. Adding () after widget calls the constructor function of the class, meaning that we now have a new object. With Dart, you don't need the 'new' keyword. //Scaffold is a new page in your app
    //  return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('Oref'),),),);
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Oref'),
          ),
          body: Center(child: BonesManager(startingBone: 'Bone Tester')),
          ),
    );
  }
}
