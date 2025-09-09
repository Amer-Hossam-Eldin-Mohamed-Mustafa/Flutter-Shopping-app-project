import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/second_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key, required String title});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hiddenPassword = true;
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Full_Name = TextEditingController();
  TextEditingController password_2 = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tr("create_account"), style: TextStyle(fontSize: 24)),
            Text(tr("Join us"), style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Full_Name,
                validator: (value) {
                  return validateFullName(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: tr("full_name"),
                ),
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: hiddenPassword,
                controller: password_2,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr("error_invalid_password");
                  } else if (password_2.text != password.text) {
                    return tr("error_passwords_do_not_match");
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
                  labelText: tr("confirm_password"),
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

                  MyDialog1();
                } else {
                  debugPrint("Validation failed");
                }
              },

              child: Text("Login"),
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

  Future<void> MyDialog1() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(tr("Helloooo")),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text(tr("Account created successfully"))],
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

  String? validateFullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return tr("error_empty_name");
    }

    List<String> words = value.trim().split(" ");

    for (var word in words) {
      if (word.isEmpty) continue;

      if (word[0] != word[0].toUpperCase()) {
        return tr("error_uppercase_required");
      }

      if (!word.characters.every((c) => c.toLowerCase() != c.toUpperCase())) {
        return tr("error_letters_only");
      }
    }

    return null;
  }
}
