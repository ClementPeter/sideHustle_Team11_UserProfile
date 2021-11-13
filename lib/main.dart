import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserProfile(),
    );
  }
}

class UserProfile extends StatelessWidget {
  // const UserProfile({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("User Profile"),
          centerTitle: true,
          backgroundColor: Color(0xff102A67)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey[300],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Icon(Icons.account_circle_sharp, size: 50.0),
                      title: Text(
                        'Clement Peter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      subtitle: Text(
                          'Landmark University clementpeter2000@gmail.com '),
                      //subtitle: Text('Landmark University '),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0.0),
                  child: Container(
                    child: Text('General',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person, color: Color(0xff1256D8)),
                    title: Text('Edit Profile'),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.badge, color: Color(0xff1256D8)),
                    title: Text('Badges'),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.add_circle_outline,
                        color: Color(0xff1256D8)),
                    title: Text('Study Goals'),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.redo, color: Color(0xff1256D8)),
              title: Text('School Schedule'),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.group, color: Color(0xff1256D8)),
              title: Text('School Schedule'),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }
}
