import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue="";
  final TextEditingController controller = new TextEditingController();
  void onSubmitted(String response)
  {
    print(response);
    setState(() {
      inputValue+= response+"\n";
    });
    controller.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Titulo'),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: 'Ingrese un texto.'),
                onSubmitted: (String response)=> onSubmitted(response),
                controller: controller,
              ),
              new Text(inputValue)
            ],
          )
        )
      ),
    );
  }
}
 