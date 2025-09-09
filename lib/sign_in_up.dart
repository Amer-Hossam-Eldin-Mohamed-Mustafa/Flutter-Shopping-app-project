import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/sign_in.dart';
import 'package:first_project/sign_up.dart';
import 'package:flutter/material.dart';

class Sign_in_up extends StatefulWidget {
  const Sign_in_up({super.key});

  @override
  State<Sign_in_up> createState() => _Sign_in_upState();
}

class _Sign_in_upState extends State<Sign_in_up> {
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
      appBar: AppBar(
        title: Text("Shop ya bob", style: TextStyle(fontFamily: "Suwanna")),

        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Shop ya bob",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Suwanna",
            ),
          ),
          SizedBox(height: 20),
          Text(
            tr("hello_message"),
            style: TextStyle(fontSize: 24, fontFamily: "Suwanna"),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset("assets/shop_photo.jpg", height: 150),
              SizedBox(width: 90),
              Image.network("https://picsum.photos/200", height: 150),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn(title: '')),
                  );
                },
                child: Text(
                  tr("sign_in"),
                  style: TextStyle(fontFamily: "Suwanna"),
                ),
              ),

              SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp(title: '')),
                  );
                },
                child: Text(
                  tr("sign_up"),
                  style: TextStyle(fontFamily: "Suwanna"),
                ),
              ),
            ],
          ),
        ],
      ),
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
