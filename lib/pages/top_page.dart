import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/user.dart';
import 'package:flutter_application_2/pages/settings_profile.dart';
import 'package:flutter_application_2/pages/talk_room.dart';

class TopPage extends StatefulWidget {
  const TopPage({ Key? key }) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  String nullimage = "https://pics.prcm.jp/3793cfc71b2b3/84549708/png/84549708.png";
  List<User> userList = [
    User(
      name: "田中",
      uid: "tanaka",
      imagePath: "https://hiyokoyarou.com/wp-content/uploads/2017/04/iconpittari.png",
      lastMessage: "こんにちは",
    ),
    User(
       name: "鈴木",
      uid: "satou",
      imagePath: null,
      lastMessage: null,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("チャットアプリ"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => SettingProfilePage(),
                  ),
                );
            },
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index){
        return InkWell(
          onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) =>TalkRoom(userList[index].name ?? "名無し")
                ));
            },
          child: Container(   
            height: 64,
            child: Row(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(userList[index].imagePath?? nullimage),
                  radius: 30,
                ),
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(userList[index].name ?? "名無し", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(userList[index].lastMessage ?? "メッセージはありません", style: TextStyle(color: Colors.grey, ))
                  ],
                ),
        
              ],
            ),
          ),
        );
      }),
    );
  }
}