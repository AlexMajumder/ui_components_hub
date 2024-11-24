import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  var myItems = [
    {'image': 'https://fondby.com/TKh6f', 'title': 'Alex Majumder'},
    {
      'image': 'https://appdeveloperalex.com/image/cover.png',
      'title': 'Dristy'
    },
    {'image': 'https://fondby.com/TKh6f', 'title': 'Durjoy'},
    {'image': 'https://fondby.com/TKh6f', 'title': 'Alex Majumder'},
    {'image': 'https://fondby.com/TKh6f', 'title': 'Alex Majumder'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('On Tap registered for ${myItems[index]['title']}'),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: double.infinity,
              height: 250,
              child: Image.network(
                myItems[index]['image']!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
