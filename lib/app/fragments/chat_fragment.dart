import 'package:flutter/material.dart';

class ChatFragment extends StatelessWidget{
  List<Chat> chat;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     chat = chats();
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
        return Row(
          children:<Widget>[
            // ClipOval(
            //   child: Image.asset('assets/images/koala.jpg'),
            // ),
            CircleAvatar(
              backgroundImage: const AssetImage('assets/images/koala.jpg'),
              radius: 35,
            ),
            SizedBox(width: 7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(chat[index].title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text(chat[index].body.substring(0,40))
              ],
            ),
            Column(
              children: <Widget>[
                Text(chat[index].time,
                  style: chat[index].isRead?TextStyle(color: Color(0xFF25D366)):TextStyle(),),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: chat[index].isRead?Border.all(color: Color((0xFF25D366))):Border.all(color: Colors.transparent),
                      color: chat[index].isRead?Color((0xFF25D366)):Colors.transparent
                  ),
                  child: Text(chat[index].bubble==0?"":"${chat[index].bubble}",
                    style: chat[index].isRead?TextStyle(color: Color(0xFFFFFFFF)):TextStyle(),),
                ),
                /*Text(chat[index].bubble==0?"":"${chat[index].bubble}",
                style: chat[index].isRead?TextStyle(color: Color(0xFF25D366)):TextStyle(),)*/
              ],
            )
          ],
        );
        },itemCount: chat.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () => {},
      ),
    );
  }

}

List<Chat> chats(){
  List<Chat> chats = [
    Chat(1, "Koala", message(), "12:32", 0, false),
    Chat(2, "Wili", message(), "12:32", 9, true),
    Chat(3, "Burhan", message(), "12:32", 3, true),
    Chat(4, "Budi", message(), "12:32", 1, true),
    Chat(5, "Maman", message(), "12:32", 0, false),
    Chat(6, "Rahman", message(), "12:32", 0, false),
    Chat(7, "Dickri", message(), "12:32", 0, false),
    Chat(8, "Panda", message(), "12:32", 2, true),
    Chat(9, "Arjun", message(), "12:32", 0, false),
    Chat(10, "Felix", message(), "12:32", 1, true),
  ];
  return chats;
}

class Chat{
  int id;
  String title;
  String body;
  String time;
  int bubble;
  bool isRead;

  Chat(this.id, this.title, this.body, this.time, this.bubble, this.isRead);

}

String message(){
  return "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
}
