import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Title'),
          content: const Text('Content, more information'),
          actions: [
            MaterialButton(
              color: Colors.deepPurple[200],
              onPressed: () {
                print('Ok button pressed');
              },
              child: const Text('Ok'),
            ),
            MaterialButton(
              color: Colors.deepPurple[200],
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog')),
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[300],
          onPressed: _showDialog,
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
