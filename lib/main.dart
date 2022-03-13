import 'package:flutter/material.dart';
// basic widgets
/*
Flutter comes with a suite of powerful basic widgets,
of which the following are commonly used:
- Text
  The Text widget lets you create a run of styled text within your application.
- Row, Column
  These flex widgets let you create flexible layouts in both the horizontal (Row)
  and vertical (Column) directions.
- Stack
  Instead of being linearly oriented (either horizontally or vertically),
  a Stack widget lets you place widgets on top of each other in paint order.
  You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack.
  Stacks are based on the web’s absolute positioning layout model.
- Container
  The Container widget lets you create a rectangular visual element.
  A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow.
  A Container can also have margins, padding, and constraints applied to its size.
  In addition, a Container can be transformed in three dimensional space using a matrix.
*/
void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}


/*
*------------*
* MyScaffold *
*------------*
*     |      *
*     |      *
*   child    *
*------------*
*  MyAppBar  *
*------------*
* */

// The MyScaffold widget organizes its children in a vertical column.
//
class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        /*
        * UI:
        * MyAppBar
        *  Text
        */
        children: [
          MyAppBar(title:Text('Example title',style: Theme.of(context).primaryTextTheme.headline6,),),
          // The middle child, the title widget, is marked as Expanded,
          // which means it expands to fill any remaining available space
          // that hasn’t been consumed by the other children.
          const Expanded(child: Center(child: Text('Hello, world!'),)),
        ],
      ),
    );
  }
}

//MyAppBar widget creates a Container
class MyAppBar extends StatelessWidget {
  final Widget title;
  // Fields in a Widget subclass are always marked "final".
  const MyAppBar({required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        /*
        * UI: children[menu, title, search]
        */
        children: [
          const IconButton(icon: Icon(Icons.menu), tooltip: 'Navigation menu', onPressed: null,), // null disables the button),
          // Expanded expands its child to fill the available space.
          Expanded( child: title,),
          const IconButton(icon: Icon(Icons.search),onPressed: null, tooltip: 'Search',),
        ],
      ),
    );
  }
}


