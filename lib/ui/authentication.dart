import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // to fill the max height and width to screen
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //for e mail and passwd field
          children: [
            TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                hintText: "something@email.com",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextFormField(
              controller: _passwordField,
              obscureText: true, // not to see in passwd field
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              //for great seeing formatting nicely
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45.0,
              decoration: BoxDecoration(
                //white buton with rounded decoration
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Text("Register"),
              ),
            ),
            Container(
              //for great seeing formatting nicely
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45.0,
              decoration: BoxDecoration(
                //white buton with rounded decoration
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Text("Log In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
