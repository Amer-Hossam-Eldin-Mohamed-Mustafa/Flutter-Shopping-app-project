import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/navig_bars/home.dart' show HomePage;
import 'package:first_project/navig_bars/profile.dart' show ProfilePage;
import 'package:first_project/navig_bars/settings.dart' show SettingsPage;
import 'package:first_project/sign_in_up.dart';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required String title});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Widget> pages = [HomePage(), ProfilePage(), SettingsPage()];
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[SelectedIndex],
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
              leading: Icon(Icons.logout),
              title: Text(tr("sign-out")),
              subtitle: Text("to exit the app"),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_in_up()),
                );
              },
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,

        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  onItemTapped(int index) {
    SelectedIndex = index;
    setState(() {});
  }

  chahngeLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('ar', 'EG'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }
}
