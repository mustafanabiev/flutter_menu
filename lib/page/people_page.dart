import 'package:flutter/material.dart';
import 'package:flutter_menu/widget/navigation_drawer_widget.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('People'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
