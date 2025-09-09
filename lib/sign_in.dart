import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/second_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key, required String title});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hiddenPassword = true;
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            ListTile(
              title: Text(tr("contact_us")),
              subtitle: Text(
                tr("for help and support"),
                style: TextStyle(fontFamily: "Suwanna"),
              ),
              trailing: Icon(Icons.contact_mail),
            ),
            ListTile(
              title: Text(tr("About us")),
              subtitle: Text(
                tr("to know more about us"),
                style: TextStyle(fontFamily: "Suwanna"),
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text(tr("Change Language")),
              trailing: Icon(Icons.language),
              onTap: () {
                chahngeLanguage();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Shop ya bob"), backgroundColor: Colors.blue),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              tr("welcome_back"),
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            Text(tr("login_to_your_account"), style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr("error_empty_email");
                  } else if (!value.contains("@")) {
                    return tr("error_invalid_email");
                  }
                  return null;
                },

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: tr("email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: hiddenPassword,
                controller: password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr("error_invalid_password");
                  } else if (value.length < 6) {
                    return tr("error_short_password");
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      togglePassward();
                    },
                    icon: Icon(
                      hiddenPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  labelText: tr("password"),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint(email.text);
                debugPrint(password.text);
                if (_formKey.currentState!.validate()) {
                  debugPrint("All validations passed");
                  SnackBar s = SnackBar(
                    content: Text("Login Successful"),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(label: "Ok", onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(s);

                  MyDialog();
                } else {
                  debugPrint("Validation failed");
                }
              },

              child: Text(tr("sign_in")),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: dead_code, unused_element
  void togglePassward() {
    hiddenPassword = !hiddenPassword;
    setState(() {});
  }

  Future<void> MyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(tr("Helloooo")),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text(tr("Account sign-in successfully"))],
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              child: TextButton(
                child: Text(tr("close")),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SecondPage(title: ''),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(opacity: animation, child: child),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  chahngeLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('ar', 'EG'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }
}
