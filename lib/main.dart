import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graphics Guruji Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logoGg.png'),
              SizedBox(height: 10),
              Text(
                'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email Address',
                  hintStyle: TextStyle(color: Colors.grey), 
                  suffixIcon: Icon(Icons.email, color: const Color.fromARGB(255, 209, 209, 209)), 
                  contentPadding: EdgeInsets.symmetric(horizontal: 20), 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true, // Hides the text input for passwords
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey), 
                  suffixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 209, 209, 209)), // Icon on the right
                  contentPadding: EdgeInsets.symmetric(horizontal: 20), // Adjust padding for text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('LOGIN', 
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    print("Forgot Password Clicked");
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.orange),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'or login with',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/google_logo.webp', width: 20, height: 20),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.facebook, color: Colors.blue),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/x_logo.png', width: 20, height: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Register now',
                       style: TextStyle(
                        color: Colors.orange, 
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, 
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms & Conditions Clicked");
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By signing up, you agree with our ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.orange, 
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, 
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms & Conditions Clicked");
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}