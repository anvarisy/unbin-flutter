import 'package:flutter/material.dart';

class CommunityFragment extends StatelessWidget{
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
                        Icon(
                          Icons.group,
                          size: 64.0,
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: CircleAvatar(
                            radius: 10,
                            child: Icon(Icons.add, size: 20, color: Color(0xFF25D366),),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text('New Community'),
                        // subtitle: Padding(
                        //   padding: EdgeInsets.only(top: 2.0),
                        //   child: Text('Tap to add status update'),
                        // ),
                      ),
                    ),
                  ],
                ),
                // Since the ExpansionTile has top and bottom borders by default and we don't want that so we
                //use Theme to override its dividerColor property
              ],
            ),
          ),
        ),
    );
  }

}