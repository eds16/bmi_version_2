import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //constructor
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetInput() {
    weightController = TextEditingController();
    heightController = TextEditingController();
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            onPressed: _resetInput,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
        child: Form(
          key: _formKey,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

TextFormField textInput() {
  return TextFormField();
}
