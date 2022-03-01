import 'package:flutter/material.dart';

class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage({ Key? key }) : super(key: key);

  @override
  _SettingProfilePageState createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("プロフィール編集"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(width: 100,
                  child: Text("名前",
                  textAlign: TextAlign.left,
                  ),
                ),
                Expanded(child: TextField()),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(width: 100,
                child: Text("サムネイル")
              ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 150, height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: Text("画像を選択")
                      ),
                    ),
                  ),
                ),
              
            ],
          )
        ],
      )
    );
  }
}