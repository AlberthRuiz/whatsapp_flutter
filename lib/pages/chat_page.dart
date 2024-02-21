import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/data/data_dummy.dart';
import 'package:whatsapp_flutter/widgets/item_chats_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, index) {
        return ItemCHatWidget(
          chatModel: chats[index],
        );
      },
    );
  }
}
