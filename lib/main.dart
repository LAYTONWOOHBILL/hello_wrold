import 'package:flutter/material.dart';

void main() {
  runApp(
    // the Center widget and its child, the Text widget.
    const Center(
      // The text direction needs to be specified in this instance;
      //  When the MaterialApp widget is used, this is taken care of for you
      child: Text('Hello, world!', textDirection: TextDirection.ltr,
      ),
    ),
  );
}

// commonly author new widgets that are subclasses of either StatelessWidget or StatefulWidget,
// depending on whether your widget manages any state.