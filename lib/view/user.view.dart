import 'package:flutter/material.dart';
import 'package:learn_get_it/service/locator.service.dart';
import 'package:learn_get_it/service/user.service.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final TextEditingController usernameController = TextEditingController();
  // final userService = locator<UserService>();
  ///example user service without locator
  ///first we should create an instance for user service
  final userService = UserService();
  /*
   * summary
   * the code above in this case we should creating an object of user service
   * imagin if we have multiple widget class
   * we should create an instance for each widget
   * get it appears to handle to solve problems creating instance repeatedly
   * when we register at once. the instance is create only once then can be use
   * for all class in the project
   * also if in user service need to add params in constructor, if we not use get_it
   * then we need to add params in all instance that we create in every class
   * imagine if user service is defined in 30 class, so we should change it in 30 class
   * use get_it we just change in setup locator service
   */
  @override
  Widget build(BuildContext context) {

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