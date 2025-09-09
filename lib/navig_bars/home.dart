import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/sign_in_up.dart' show Sign_in_up;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            ListTile(
              title: Text("Contact us"),
              subtitle: Text("for help and support"),
              trailing: Icon(Icons.contact_mail),
            ),
            ListTile(
              title: Text("About us"),
              subtitle: Text("to know more about us"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Logout"),
              subtitle: Text("to exit the app"),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_in_up()),
                );
              },
            ),
            ListTile(
              title: Text("Change Language"),
              trailing: Icon(Icons.language),
              onTap: () {
                chahngeLanguage();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          tr("our_products"),
          style: const TextStyle(fontFamily: "Suwanna"),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: ListView(
        children: [
          Text(
            tr("fetured_products"),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontFamily: "Suwanna"),
          ),
          SizedBox(height: 20),

          SizedBox(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/food.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Fresh Food",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/gaming.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Gaming Accessories",

                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/car_care.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Car Care",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Text(
            tr("shop_our_products"),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontFamily: "Suwanna"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
              children: [
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/personal_care.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Personal Care",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/makeup.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Make Up",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/cameras.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cameras",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/groccery.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Groccery",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/phones.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Phones",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/laptops.jpg", fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Laptops",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Added to Cart successfully"),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: "Ok",
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tr("hot_deals"),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Suwanna",
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              final offers = [
                {
                  "title": "50% Off Electronics",
                  "subtitle": "Limited time offer on all tech gadgets",
                  "image": "assets/laptops.jpg",
                  "tag": "50% OFF",
                },
                {
                  "title": "Free Shipping Weekend",
                  "subtitle": "No delivery charges on orders above \$50",
                  "image": "assets/phones.jpg",
                  "tag": "FREE SHIP",
                },
                {
                  "title": "Buy 2 Get 1 Free",
                  "subtitle": "On selected accessories and peripherals",
                  "image": "assets/makeup.jpg",
                  "tag": "B2G1",
                },
                {
                  "title": "Student Discount",
                  "subtitle": "Extra 20% off with valid student ID",
                  "image": "assets/gaming.jpg",
                  "tag": "20% OFF",
                },
                {
                  "title": "Bundle Deals",
                  "subtitle": "Save more when you buy complete setups",
                  "image": "assets/car_care.jpg",
                  "tag": "BUNDLE",
                },
              ];

              final offer = offers[index];

              return Card(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          offer["image"]!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Expanded description
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              offer["title"]!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              offer["subtitle"]!,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                        ),
                        child: Text(offer["tag"]!),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  chahngeLanguage() {
    if (context.locale == const Locale('en', 'US')) {
      context.setLocale(const Locale('ar', 'EG'));
    } else {
      context.setLocale(const Locale('en', 'US'));
    }
  }
}
