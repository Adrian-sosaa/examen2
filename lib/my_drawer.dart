import 'package:flutter/material.dart';
import 'package:sosa/first_page.dart';
import 'package:sosa/second_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("D R A W E R"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Page 1"),
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  ),
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Page 2"),
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  ),
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
