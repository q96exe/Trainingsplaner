import 'package:flutter/material.dart';

void main() {
  runApp(TrainingsPlaner());
}

class TrainingsPlaner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainingsplan')
      ),
      body: TextInputWidget(),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
      controller: this.controller,
        decoration: InputDecoration(prefixIcon: Icon(Icons.message),
      labelText: "Sende eine Nachricht"),
        onChanged: (text) => this.changeText(text),
      ), Text(this.text)
    ]);
  }
}
