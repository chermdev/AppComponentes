import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://kabina34radio.com/wp-content/uploads/2019/05/URnaMrya.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://s.libertaddigital.com/2018/11/13/stan-lee-spiderman.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
      ),
    );

  }

}