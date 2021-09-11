import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './theme_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Theme',
      theme: CustomeAppTheme.lightTheme,
      darkTheme: CustomeAppTheme.darkTheme,
      home: TaskPage(),
    );
  }
}

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
            padding: const EdgeInsets.all(16.0), child: const Icon(Icons.menu)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 16, right: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Today",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Icon(Icons.add_circle_outline),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  "Conference Call",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subtitle: Text("30 mins",
                    style: Theme.of(context).textTheme.bodyText2),
                trailing: Icon(Icons.check_circle,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
