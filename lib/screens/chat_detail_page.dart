import 'package:dicoding_submission/screens/home_page.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  final String person;
  final List<Map<String, dynamic>> chats = [
    {
      'isMe': true,
      'message': 'Hai, bagaimana kabar?',
      'time': '12:00',
    },
    {
      'isMe': false,
      'message': 'Kabar baik, terimakasih!',
      'time': '12:01',
    },
    {
      'isMe': true,
      'message': 'Oh, baik sekali, saya sedang membutuhkan bantuan',
      'time': '12:02',
    },
    {
      'isMe': false,
      'message': 'Apa bantuan yang kamu butuhkan?',
      'time': '12:03',
    },
    {
      'isMe': true,
      'message': 'Saya sedang mencari tutorial membuat aplikasi flutter',
      'time': '12:04',
    },
    {
      'isMe': false,
      'message':
          'Kamu bisa mencari di youtube, atau mencoba tutorial di website resmi flutter',
      'time': '12:05',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya',
      'time': '12:06',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil',
      'time': '12:07',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat',
      'time': '12:08',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu',
      'time': '12:09',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya',
      'time': '12:10',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode',
      'time': '12:11',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya',
      'time': '12:12',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil',
      'time': '12:13',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:14',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:15',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:16',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:17',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:18',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:19',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:20',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:21',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:22',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:23',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:24',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:25',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:26',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:27',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:28',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:29',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:30',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:31',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:32',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:33',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:34',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:35',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:36',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:37',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:38',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:39',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:40',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:41',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:42',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:43',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:44',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:45',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:46',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:47',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:48',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:49',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:50',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:51',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:52',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:53',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan mencobanya lagi',
      'time': '12:54',
    },
    {
      'isMe': false,
      'message': 'Sama-sama, semoga kamu berhasil lagi',
      'time': '12:55',
    },
    {
      'isMe': true,
      'message': 'Saya akan mencoba membuat aplikasi chat lagi',
      'time': '12:56',
    },
    {
      'isMe': false,
      'message': 'Itu ide bagus, saya akan membantu kamu lagi',
      'time': '12:57',
    },
    {
      'isMe': true,
      'message': 'Terimakasih, saya akan menunggu bantuannya lagi',
      'time': '12:58',
    },
    {
      'isMe': false,
      'message': 'Saya akan memberikanmu contoh kode lagi',
      'time': '12:59',
    },
  ];

  ChatDetailPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person),
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
              icon: const Icon(Icons.logout))
        ],
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Stack(children: [
          /* Chats */
          ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Align(
                alignment: chats[index]['isMe']
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        chats[index]['isMe'] ? Colors.green : Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    chats[index]['message'],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Type a message...',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
