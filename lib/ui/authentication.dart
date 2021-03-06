import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/net/flutterfire.dart';
import 'package:flutter_app_with_firebase/ui/home_view.dart';


class Authentication extends StatefulWidget {


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
          mainAxisAlignment: MainAxisAlignment.center,
          //for e mail and passwd field
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
                child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
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
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35,),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
                child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
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
            ),),
            SizedBox(height: MediaQuery.of(context).size.height / 35,),
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
                onPressed: () async{
                  bool shouldNavigate = await register(_emailField.text, _passwordField.text);
                  if(shouldNavigate){
                    //Navigate
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeView(),
                    ),
                    );
                  }
                },
                child: Text("Register"),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35,),
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
                onPressed: () async {
                  bool shouldNavigate = await signIn(_emailField.text, _passwordField.text);
                  if(shouldNavigate){
                    //Navigate
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeView(),
                    ),
                    );
                  }
                },
                child: Text("Log In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
