import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.enter.co/wp-content/uploads/2016/12/Goku_Negro_Simple.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SG'),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'), 
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage('https://i.ytimg.com/vi/0OkxsADmnfE/maxresdefault.jpg')
          ),
      ),
    );
  }
}