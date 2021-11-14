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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey[300],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Icon(Icons.account_circle_sharp, size: 70.0),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text('Team 11',
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Team_11_@gmail.com,',
                                style: Theme.of(context).textTheme.subtitle1),
                            Text('SideHustle Cohort 4',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                    child: Container(
                      child: Text('General',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.person, color: Color(0xff1256D8)),
                          title: Text('Edit Profile'),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.badge, color: Color(0xff1256D8)),
                          title: Text('Badges'),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.add_circle_outline,
                              color: Color(0xff1256D8)),
                          title: Text('Study Goals'),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.redo, color: Color(0xff1256D8)),
                          title: Text('School Schedule'),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.group, color: Color(0xff1256D8)),
                          title: Text('Invite Friends'),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
