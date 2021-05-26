import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,

            ),
          )
        ],
      ),
      body: Center(
        child:FadeInImage(
          placeholder: AssetImage('assert/jar-loading.gif'),
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRedK0uwctZ8XFA-GS_tpTa7lMVZG69rC8klA&usqp=CAU'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
      ),
    );
  }
}