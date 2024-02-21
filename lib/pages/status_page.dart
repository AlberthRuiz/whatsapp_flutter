import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/12931722/pexels-photo-12931722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              Positioned(
                bottom: -6,
                right: -6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff01C851),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            "My status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Divider(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Recent updates",
          ),
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff00AC8E),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/12616283/pexels-photo-12616283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Text(
            "Luisa Lopez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Ayer 9:00 a.m."),
        ),
      ],
    );
  }
}
