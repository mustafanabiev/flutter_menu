import 'package:flutter/material.dart';
import 'package:flutter_menu/widget/navigation_drawer_widget.dart';

class FavorutesPage extends StatelessWidget {
  const FavorutesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Favorutes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
