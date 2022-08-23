import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth.dart';
import '../widgets/my_elevated_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                Provider.of<Auth>(context, listen: false).signOut();
              },
              icon: const Icon(Icons.logout),
          ),
        ],
      ),
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
              onPressed: () async {
                final user = await Provider.of<Auth>(context, listen: false).signInAnonymously();
                print(user!.uid);
              },
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













