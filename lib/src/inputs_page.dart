import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {

  @override
  _InputsPageState createState() => _InputsPageState();
}

String _nombre = '';
String _email = '';
String _pass = '';
String _date = '';
String _initialValue = 'bogota';
List<String> _listCity = ['bogota', 'medellin', 'barranquilla', 'boyaca'];

TextEditingController _textEditingController = new TextEditingController();

class _InputsPageState extends State<InputsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _inputTest(),
          Divider(),
          _inputEmail(),
          Divider(),
          _inputPass(),
          Divider(),
          _inputDate(context),
          Divider(),
          _inputDropDown(),
          Divider(),
          _showName()
        ],
      ),
    );
  }

  Widget _inputTest() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
          ),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }


  Widget _inputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
          ),
          counter: Text('Letras ${_email.length}'),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _inputPass() {
return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
          ),
          counter: Text('Letras ${_pass.length}'),
          hintText: 'Pass',
          labelText: 'Pass',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.phonelink_lock)
      ),
      onChanged: (valor) {
        setState(() {
          _pass = valor;
        });
      },
    );
  }

    Widget _inputDate(BuildContext context) {
      return TextField(
      controller: _textEditingController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
          ),
          hintText: 'date',
          labelText: 'date',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_view_day)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
    }

    Widget _showName() {
    return ListTile(
      title: Text('nombre es: $_nombre'),
      subtitle: Text('email es: $_email'),
    );
  }


  List<DropdownMenuItem<String>> _getOption() {
    List<DropdownMenuItem<String>> _lista = new List();

    _listCity.forEach((element) {
      _lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
        ));
    });
    return _lista;
  }

    Widget _inputDropDown() {
      return Row(
        children: <Widget>[
          Icon(Icons.select_all),
          SizedBox(width: 30.0,),
          Expanded(
            child: DropdownButton(
            value: _initialValue,
            items: 
            _getOption(), 
            onChanged: (otp) {
              setState((){
                _initialValue = otp;
              });
          })
          )
        ],
      );
    }


  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2015), 
      lastDate: DateTime(2025),
      locale: Locale('es', 'ES')
      );
      if (picked != null){
        setState(() {
         _date = picked.toString();
        _textEditingController.text = _date;
        });
      }

  }

}