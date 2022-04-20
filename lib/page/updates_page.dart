import 'package:flutter/material.dart';
import 'package:flutter_menu/widget/navigation_drawer_widget.dart';

class UpDatesPage extends StatelessWidget {
  const UpDatesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('UpDatesPage'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
    );
  }
}
