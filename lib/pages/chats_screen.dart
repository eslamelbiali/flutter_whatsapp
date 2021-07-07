import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/components/chat_model.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context,index)=>Column(
          children: [
            Divider(
              height: 5,
              color: Colors.grey,

            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(ChatItem[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ChatItem[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ChatItem[index].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  ChatItem[index].message,
                  style: TextStyle(
                    color: Colors.grey,
                ),
              ),
            ),
            )
          ],
        ),
        itemCount:ChatItem.length,

    );
  }
}
