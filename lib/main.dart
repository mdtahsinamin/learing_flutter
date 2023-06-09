import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // TODO: runAPP(application: APP())
  runApp(const MyApp());
}

// * StatelessWidget -> method override -> build method
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp() -> activity
    // MaterialApp() -> holds landing activity
    // theme -> themeData
    // debugShowCheckedModeBanner
    // primary color
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(primarySwatch: Colors.red),
        debugShowCheckedModeBanner: false,
        color: Colors.green,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  myCustomBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)) // Text()
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sacffold -> Components widgets
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahsin Amin"),
        titleSpacing: 50,
        toolbarOpacity: 1,
        toolbarHeight: 70,
        elevation: 50,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar("Hello flutter", context);
              },
              icon: const Icon(Icons.emoji_transportation_sharp)),
          IconButton(
              onPressed: () {
                myCustomBar("Sent email check your email", context);
              },
              icon: const Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 50,
        backgroundColor: Colors.green,
        child: const Icon(Icons.add), // add icon , so we use child
        onPressed: () {
          myCustomBar("Add you", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        // which one active , using index number
        currentIndex: 1,
        // bar items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: "exit")
        ],
        // onTap using index
        onTap: (int index) {
          if (index == 0) {
            myCustomBar("$index and I am home tab", context);
          }
          if (index == 1) {
            myCustomBar("$index and I am message tab", context);
          }
          if (index == 2) {
            myCustomBar("$index and I am exit tab", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Tahsin Amin",style: TextStyle(color: Colors.black),),
                accountEmail: Text("info@gmail.com"),
                currentAccountPicture: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 200,
                  height: 100,
                ),
                onDetailsPressed: (){
                  myCustomBar("Deails", context);
                },


              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  myCustomBar("Home", context);
                }),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
              onTap: () {
                myCustomBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Address"),
              onTap: () {
                myCustomBar("Home", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () {
                  myCustomBar("Home", context);
                })
          ],
        ),
      ),
    );
  }
}

/*
TODO:
MaterialApp is a predefined class in a flutter. Main or core component of flutter
1. color: control color
2. darkTheme
3. debugShowCheckedModeBanner
4. home
5. title
6. theme: ThemeData()
*/

/*
TODO:
 Scaffold will expand or occupy the whole device screen
 1. AppBar
 2. body
 3. drawer // left navigation *
 4. endDrawer // right navigation
 5. Bottom tab nav
 6. Floating action button

 */

/*
TODO:
AppBar is usually the topmost component of app. It contains the toolbar and some other common action buttons
1. actions: This property takes in a list of widgets as a parameter to be displayed after title if the AppBar is a row
2. title: This property usually takes in the main widget as a parameter to be displayed in AppBar
3. backgroundColor
4. elevation: This property is used to set the z-coordinate which to place this app bar relative to its parent
5. shape: This property is used to give shape to the AppBar and manage its shadow
 */
/*
TODO:
snack-bar message
floatingActionButton: FloatingActionButton()
flutter Bottom Tab
 */

/*
TODO:
Flutter Bottom Tab
1. Menu at the bottom of the Scaffold
2. We have seen this Navigation bar in most of the application
3. We can add multiple icons or text or both in the bar as items
 */

/*
TODO:
Drawer ->
1. Header Part
2. List Part
 */

/*
padding :

EdgeInsets class
 */