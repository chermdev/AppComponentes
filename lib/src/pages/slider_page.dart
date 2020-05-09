import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {


  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 262.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            _crearImagen(),
          ],
        )
      ),

    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 100.0,
      max: 424.0,
      onChanged: (_bloquearCheck) ? null : (valor){

        setState(() {
          _valorSlider = valor;
        });

      },
    );

  }

  Widget _checkBox() {

    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (valor) {
        
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });

    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor) {
        
        setState(() {
          _bloquearCheck = valor;
        });

      },
    );

  }

  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor) {
        
        setState(() {
          _bloquearCheck = valor;
        });

      },
    );

  }


  Widget _crearImagen() {

    return Expanded(
      child: FadeInImage(
        width: _valorSlider,
        fit: BoxFit.contain,
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://wallpapers.gg/wp-content/uploads/2017/10/Planet-Earth-4K-2048x2048.jpg'),
      ),
    );

  }


}