import 'package:flutter/material.dart';
import 'package:flutter_menu/widget/navigation_drawer_widget.dart';

class WorkFlowPage extends StatelessWidget {
  const WorkFlowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('WorkFlow'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
