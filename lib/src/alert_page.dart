import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.blue,
            child: Text('alerta'),
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () => _showAlert(context)),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessible_forward),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          title: Text('titulo alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('aqui pongo cualquier mierda para la alrta'),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('close')),
            FlatButton(
                onPressed: () => Navigator.of(context).pop(), child: Text('Ok'))
          ],
        );
      },
    );
  }
}
