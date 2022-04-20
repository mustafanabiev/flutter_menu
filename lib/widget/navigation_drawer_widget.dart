import 'package:flutter/material.dart';
import 'package:flutter_menu/page/favorutes_page.dart';
import 'package:flutter_menu/page/people_page.dart';
import 'package:flutter_menu/page/updates_page.dart';
import 'package:flutter_menu/page/workflow_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Color.fromRGBO(50, 75, 205, 1),
          child: ListView(
            padding: padding,
            children: <Widget>[
              const SizedBox(height: 50),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Favorutes',
                icon: Icons.favorite_border,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Workflow',
                icon: Icons.workspaces_outlined,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Updates',
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Divider(color: Colors.white70),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              buildMenuItem(
                text: 'Setting',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Exit',
                icon: Icons.exit_to_app_outlined,
                onClicked: () => selectedItem(context, 5),
              ),
            ],
          )),
    );
  }

  Widget buildMenuItem({
    @required String text,
    @required IconData icon,
    @required VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PeoplePage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FavorutesPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WorkFlowPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UpDatesPage(),
          ),
        );
        break;
    }
  }
}
