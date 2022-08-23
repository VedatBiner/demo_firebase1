import 'package:demo_firebase_setup1/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In Page",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30),
            MyElevatedButton(
              color: Colors.orangeAccent,
              child: const Text("Sign In Anonymously"),
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            MyElevatedButton(
              color: Colors.yellowAccent,
              child: const Text("Sign In Email/Password"),
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            MyElevatedButton(
              color: Colors.lightBlueAccent,
              child: const Text("Google Sign In"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
