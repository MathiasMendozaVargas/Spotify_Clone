import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
                    icon: Icon(Icons.all_inbox_sharp),
                    onPressed: () {}
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 80),
              alignment: Alignment.topLeft,
              child: Text(
                'Your Library',
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
