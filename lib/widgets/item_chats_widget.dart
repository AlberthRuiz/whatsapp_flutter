import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/models/chat_model.dart';
import 'package:whatsapp_flutter/pages/chat_details_page.dart';

class ItemCHatWidget extends StatelessWidget {
  ChatModel chatModel;

  ItemCHatWidget({required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 13.0,
              color: chatModel.isTyping ? Color(0xff01C851) : Colors.black45),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12,
                color: chatModel.isTyping ? Color(0xff01C851) : Colors.black45,
              ),
            ),
            chatModel.countMessage > 0
                ? Container(
                    height: 20,
                    width: 20,
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff01C851),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
