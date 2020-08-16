import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards Page'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            _cards(),
            SizedBox(height: 20.0,),
            _cards2()
            ],
        ));
  }

  Widget _cards() {
    return Card(
      elevation: 10.0,
      shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(23)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('titulo de la tarjeta'),
            subtitle: Text(
                'aqui hay un poco de mierda para escibir ya que no se que mas mierdas escribir  y no tengo imaginación'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('cancel')),
              FlatButton(onPressed: () {}, child: Text('ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cards2() {
    final card =  Container(
      child: Column(

        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://estaticos.muyinteresante.es/media/cache/760x570_thumb/uploads/images/pyr/5cd405db5cafe829df48e212/funimation-1.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            height: 300.0,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('imagen del goku'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(5, 10),
            blurRadius: 3.0,
            spreadRadius: 2.0
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
      
      ,
    );
  }
}
