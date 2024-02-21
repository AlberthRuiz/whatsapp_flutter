import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/data/data_dummy.dart';
import 'package:whatsapp_flutter/models/chat_messsage_model.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  TextEditingController _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "XIMENA LOPEZ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "Last seen today 2:00 pm",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white60,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
          ),
        ],
      ),
      body: Stack(
        children: [
          //Fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),
          SizedBox(
            height: 10,
          ), //Listado
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: chatMeesageList.length,
            itemBuilder: (BuildContext context, int index) {
              return chatMeesageList[index].messageType == "me"
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 6.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                            color: Color(0xffE3FFC4),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                                topRight: Radius.circular(-.0),
                                topLeft: Radius.circular(14.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 12.0,
                              )
                            ]),
                        child: Text(
                          chatMeesageList[index].messageContent,
                        ),
                      ),
                    )
                  : Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 6.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 12.0,
                              )
                            ]),
                        child: Text(
                          chatMeesageList[index].messageContent,
                        ),
                      ),
                    );
            },
          ),

          //Input
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _message,
                        decoration: InputDecoration(
                          hintText: "Type message",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.sentiment_satisfied_alt,
                            size: 30,
                            color: Colors.black45,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attach_file_outlined,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        chatMeesageList.add(
                          ChatMessageModel(
                              messageContent: _message.text, messageType: "me"),
                        );
                        _message.clear();
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff00887B),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
