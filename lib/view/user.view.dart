import 'package:flutter/material.dart';
import 'package:learn_get_it/service/locator.service.dart';
import 'package:learn_get_it/service/user.service.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userService = locator<UserService>();

    return Scaffold(
      appBar: AppBar(title: Text("User Page")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Current Username: ${userService.getUsername()}"),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: "New Username"),
            ),
            ElevatedButton(
              onPressed: () {
                userService.setUsername(usernameController.text);
                setState(() {}); // Memperbarui tampilan
              },
              child: Text("Update Username"),
            ),
          ],
        ),
      ),
    );
  }
}