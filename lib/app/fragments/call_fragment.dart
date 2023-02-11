import 'package:flutter/material.dart';

class CallFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              SingleCallWidget(
                callStatus: 'Outgoing',
                callType: 'Audio',
                chatMessage: 'Today, 12:28 PM',
                chatTitle: 'Koala',
                imageUrl: 'assets/images/koala.jpg',),
              SingleCallWidget(
                callStatus: 'Incoming',
                callType: 'Video',
                chatMessage: 'Today, 01:11 AM',
                chatTitle: 'Koala',
                imageUrl: 'assets/images/koala.jpg',
              ),
              SingleCallWidget(
                callStatus: 'Incoming',
                callType: 'Video',
                chatMessage: 'Today, 5:28 AM',
                chatTitle: 'Who Are You',
                imageUrl:
                'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
              ),
              SingleCallWidget(
                callStatus: 'Outgoing',
                callType: 'Audio',
                chatMessage: 'Today, 12:28 PM',
                chatTitle: 'Koala Panda',
                imageUrl: 'assets/images/koala.jpg',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.call),
          onPressed: () => {},
        )
    );
  }
  
}

class SingleCallWidget extends StatelessWidget {
  final String chatMessage;
  final String chatTitle;
  final String callStatus;
  final String imageUrl;
  final String callType;

  const SingleCallWidget({
    Key key,
    this.chatMessage,
    this.chatTitle,
    this.callStatus,
    this.imageUrl, this.callType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Expanded(
          child: ListTile(
              title: Text('$chatTitle',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Row(children: [
                Icon(
                  callStatus == 'Incoming'
                      ? (Icons.call_received_sharp)
                      : Icons.call_made_sharp,
                  size: 15,
                  color: callStatus == 'Incoming' ? Colors.teal : Colors.red,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$chatMessage',
                      style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ]),
              trailing: Column(
                children:  [
                  Padding(
                    padding:const EdgeInsets.only(top: 8.0),
                    child: Icon(callType == 'Audio' ? Icons.call :Icons.videocam,color: Colors.teal),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}