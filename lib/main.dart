import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 150,
              child: DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1581456495146-65a71b2c8e52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                    ),
                    SizedBox(height: 15,),
                    Text("Al Raiyan Al Zakwani")
                  ],
                ),),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
