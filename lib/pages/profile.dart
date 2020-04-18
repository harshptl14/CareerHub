import 'package:career_hub/api/user_api.dart';
import 'package:career_hub/notifier/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override

  @override
  Widget build(BuildContext context) {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context);

    print("building Feed");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          authNotifier.user != null ? authNotifier.user.displayName : "Feed",style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          // action button
          FlatButton(
            onPressed: () => signout(authNotifier),
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Container(),
      );
  }
}