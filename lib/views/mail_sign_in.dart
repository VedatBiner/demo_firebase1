import 'package:flutter/material.dart';

enum FormStatus { signIn, register }

class EmailSignInPage extends StatefulWidget {
  const EmailSignInPage({Key? key}) : super(key: key);

  @override
  State<EmailSignInPage> createState() => _EmailSignInPageState();
}

class _EmailSignInPageState extends State<EmailSignInPage> {
  // değişkenin değerine göre forma bağlanacak
  FormStatus _formStatus = FormStatus.signIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _formStatus == FormStatus.signIn
            ? buildSignInForm()
            : buildRegisterForm(),
      ),
    );
  }

  Widget buildSignInForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Lütfen Giriş Yapınız",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Giriş"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _formStatus = FormStatus.register;
                });
              },
              child: const Text("Yeni Kayıt için tıklayınız"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRegisterForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Kayıt Formu",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            TextFormField(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Kayıt"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _formStatus = FormStatus.signIn;
                });
              },
              child: const Text("Zaten üye misiniz? Tıklayınız"),
            ),
          ],
        ),
      ),
    );
  }
}
