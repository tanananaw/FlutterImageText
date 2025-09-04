import 'package:flutter/material.dart';

/*The purpose of this syntax is to import the flutter material design library
widgets and tools for building a material design UI(google design system)

import - is a dart keyword to include external libraries
package:flutter/material.dart - refers to the material design package include w/ flutter,
containing widgets.

This is essential for building Flutter Apps with a standard UI
*/

void main(){
  runApp(const MyApp());
}
/*
The entry point of the flutter app
void main() - main function, starting point of any dart program.

runApp() - Is a flutter function that initialize the app and attach the root widget(MyApp) to the screen.

const MyApp() - Creates an Instance of the My App class, marked as a constant.

*/

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override // indicate this method override the "build" method from StatelessWidget.
Widget build(BuildContext context){
    return MaterialApp(
    title: 'Avengers: Infinity War',
    theme: ThemeData(
        primarySwatch: Colors.blue,
),
    home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://i0.wp.com/bmamag.com/wp-content/uploads/2018/05/avengers-infinity-war-et00073462-02-04-2018-09-21-43.jpg?fit=1280%2C536&quality=89&ssl=1',
            width: 1000,
            height: 500,
          ),
          const SizedBox(height: 20),
          const Text(
            'TITLE: AVENGERS: Infinity War',
            style: TextStyle(fontSize: 24),
          ),

          const Text(
            'SYPNOSIS:'
            ' Iron Man, Thor, the Hulk and the rest of the Avengers unite'
                ' to battle their most powerful enemy yetthe evil Thanos. '
                'On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the'
                ' planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ),
    );
  }
}



/*
Define as a root widget or the main container.

class MyApp - It declares a custom class that extends StatelessWidget.

StatelessWidget - Flutter base class for widgets that don't change state(static UI).

const Myapp({super.key}) - Constructor. with super.key passing an optional "key" parameter
to the parent StatelessWidget.

Keys are used to Identify the widgets uniquely.

const - ensure that the constructor creates a immutable instance.
----------------------------------
Widget build(BuildContext context) - Provide contextual information about the widgets
position in the widget tree.

MaterialApp - Flutter widget that sets up the apps core structure, include
navigation, theme, home screen.

title: 'Hello Flutter', - Sets the app title, that visible on the device task switcher.

ThemeData(primarySwatch: Colors.Blue), - Defines the apps visual theme with color blue as
the primary color.

home: const MyHomePage(), - This syntax sets the home screen to an instance of the
my HomePage Widget.
*/


