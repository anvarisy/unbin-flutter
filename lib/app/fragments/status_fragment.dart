import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Color(0xff128C7E),
                          foregroundColor: Color(0xff128C7E),
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/koala.jpg'),
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: CircleAvatar(
                            radius: 10,
                            child: Icon(Icons.add, size: 20, color: Color(0xFF25D366)),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text('My Status'),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('Tap to add status update'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text('Recent updates',
                      style: TextStyle(fontWeight: FontWeight.w400)),
                ),
                Row(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: const AssetImage('assets/images/koala.jpg'),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text('Andri nova'),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('7 minutes ago'),
                        ),
                      ),
                    ),
                  ],
                ),
                // Since the ExpansionTile has top and bottom borders by default and we don't want that so we
                //use Theme to override its dividerColor property
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: const ExpansionTile(
                    textColor: Colors.white,
                    tilePadding: EdgeInsets.all(0.0),
                    title: Text('Viewed Status',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                    children: [
                      SingleStatusItem(
                        statusTitle: 'Koala Ku',
                        statusTime: '56 minutes ago',
                        statusImage: 'assets/images/koala.jpg',
                      ),
                      SingleStatusItem(
                        statusTitle: 'Koala Panda',
                        statusTime: '2 minutes ago',
                        statusImage: 'assets/images/koala.jpg',
                      ),
                      SingleStatusItem(
                        statusTitle: 'Panda Ku',
                        statusTime: '12 minutes ago',
                        statusImage: 'assets/images/koala.jpg',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(
                  CupertinoIcons.pen
              ),
              onPressed: () {
                //...
              },
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(
                  Icons.camera_alt
              ),
              onPressed: () => {},
            )
          ],)
    );
  }

}

class SingleStatusItem extends StatelessWidget {
  final String statusTitle;
  final String statusTime;
  final String statusImage;
  const SingleStatusItem({
    Key key,
    this.statusTitle,
    this.statusTime,
    this.statusImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('$statusImage'),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text('$statusTitle'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("$statusTime"),
            ),
          ),
        ),
      ],
    );
  }
}