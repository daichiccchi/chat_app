import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/message.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbol_data_local.dart';

class TalkRoom extends StatefulWidget {
  final String name;
  TalkRoom(this.name);

  @override
  _TalkRoomState createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  List<Message> messageList = [
    Message(
      message: 'あいうえお',
      isMe: true,
      sendTime: DateTime(2022, 2, 23, 15, 00)
    ),
    Message(
      message: 'かきくけこaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      isMe: false,
      sendTime: DateTime(2022, 2, 23, 16, 00)
    ),
     Message(
      message: 'あいうえお',
      isMe: true,
      sendTime: DateTime(2022, 2, 23, 15, 00)
    ),
    Message(
      message: 'かきくけこaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      isMe: false,
      sendTime: DateTime(2022, 2, 23, 16, 00)
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.name),
        ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 60.0),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              reverse: true,
              itemCount: messageList.length,
              itemBuilder: (context, index){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: messageList[index].isMe! ? TextDirection.rtl : TextDirection.ltr,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.55),
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: messageList[index].isMe! ? Colors.green : Colors.white,    
                      ),
                      
                      child: Text(
                        messageList[index].message ?? "no message"
                      )
                    ),
                  ),
                  Text(intl.DateFormat('HH:mm').format(messageList[index].sendTime!), style: TextStyle(fontSize: 10)),
                ],
              );
            }),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60, color: Colors.white,
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                )),
                IconButton(icon: Icon(Icons.send), 
                onPressed: () { 
                  print("送信");
                 },)
              ],
            ),
          ),
        )
        ],
      )
    );
  }
}