import 'package:flutter/material.dart';


class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 2),
                child: IconButton(
                  iconSize: 28,
                  color: Colors.grey[200],
                  icon: Icon(Icons.airplay_outlined),
                  onPressed: () {}
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 80),
              alignment: Alignment.topLeft,
              child: Text(
                'Browse Music',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
