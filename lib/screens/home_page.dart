import 'package:dicoding_submission/screens/chats_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const sizedBox = SizedBox(height: 20);
  final formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hamzan Wahyudi App"),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Login Cuy",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      sizedBox,
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Email", border: OutlineInputBorder()),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
                      ),
                      sizedBox,
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return "Please enter your password (at least 6 characters)";
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value!,
                      ),
                      sizedBox,
                      ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          "Kamu login sebagai : $_email")));
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChatsPage();
                              }));
                            }
                          },
                          child: const Text("Sign In"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
