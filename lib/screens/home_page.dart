import 'package:dicoding_submission/screens/chats_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hamzan Wahyudi App"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Home Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatsPage()));
                  },
                  child: const Text("Go to Chats Page"))
            ],
          ),
        ),
      ),
    );
  }
}
