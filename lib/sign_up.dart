import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Create your account",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Create an account and explore a tailored library of captivating stories.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            //email text field
            SizedBox(height: 20),
            Text(
              'Email Address',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFAFAFA),
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: InputBorder.none,
                ),
              ),
            ),

            //password text field
            SizedBox(height: 10),
            Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFAFAFA),
              ),
              child: TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),

            //create account button
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Pressed");
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF34A853)),
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      shape: WidgetStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text('Create new Account'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to the login page here
                          print("Navigate to login page");
                        },
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40,),
            Row(
              children: const <Widget>[
                Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 1.5,
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: (){
                      print("Login with Google pressed");
                    },
                    icon: Image.asset('assets/images/google_icon.png',height:50),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFF34A853)),
                      shape: WidgetStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      )
                    ),
                    label:  Text("Sign in with Google"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
