import 'package:dicoding_submission/screens/chat_detail_page.dart';
import 'package:dicoding_submission/screens/home_page.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chats"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                icon: const Icon(Icons.logout)),
          ],
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: const Icon(Icons.chat),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ))),
                  title: Text(
                    'Chat from Person ${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Important message from chat ${index + 1}'),
                  trailing: const Icon(Icons.archive),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetailPage(
                        person: "Chat from Person ${index + 1}",
                      );
                    }));
                  },
                  contentPadding: const EdgeInsets.all(5),
                ),
              ),
            );
          },
          itemCount: 20,
        ));
  }
}
