import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Aplicación Calculadora de interés simple',
    home: SIForm(),
  ));
} //Fin de main

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
} //Fin clase SIForm

class _SIFormState extends State<SIForm> {
  var _currencies = [
    'Rupias',
    'Dolares',
    'Libras'
  ];
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Calculadora de interés por Meléndez'),
        backgroundColor: Colors.purple[300],
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Principal', hintText: 'Enter Principal e.g. 12000', border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                )), //Fin padding1
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Tipo de interes', hintText: 'en porcentaje', border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                )), //Fin padding2
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Termino', hintText: 'Tiempo en años', border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                    )),
                    Container(
                      width: _minimumPadding * 5,
                    ),
                    Expanded(
                        child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: 'Dolares',
                      onChanged: (String newValueSelected) {
                        // código para ejecutar, cuando se selecciona un elemento de menú del menú desplegable
                      },
                    )) //Fin de expanded
                  ], //Fin widget[]
                )), //Fin padding3
            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text('Calcular'),
                        textColor: Colors.black,
                        color: Colors.lightGreenAccent[400],
                        onPressed: () {},
                      ), //Fin de raisedButton1
                    ), //Fin expanded boton1
                    Expanded(
                      child: RaisedButton(
                        child: Text('Reiniciar'),
                        textColor: Colors.black,
                        color: Colors.purple[300],
                        onPressed: () {},
                      ), //Fin de raisedButton2
                    ), //Fin expanded boton2
                  ], //Fin de widget[]
                )), //Fin de padding4
            Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: Text('Meléndez Escobedo Jaqueline', style: TextStyle(fontSize: 20.0)),
            )
          ], //Fin de children widget[]
        ), //Fin de listview
      ), //Fin del contededor
    ); //Fin de Scaffold
  } //Fin de widget

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 130.0,
      height: 130.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  } //Fin de widget getImageAsset
} //Fin de clase _SIFormState
