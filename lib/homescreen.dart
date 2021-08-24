import 'package:flutter/material.dart';
import 'package:webcastle/secondScreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MainPage( title: 'home',),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final formKey = GlobalKey<FormState>();
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: formKey,

          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              buildUsername("Vessel Name"),
              const SizedBox(height: 16),
              buildUsername("Vessel IMO"),
              const SizedBox(height: 16),
              buildUsername("Vessel email"),
              const SizedBox(height: 16),
              buildUsername("Registerd port"),
              const SizedBox(height: 32),
              buildUsername("Captain"),
              const SizedBox(height: 16),

              buildsubmit()

            ],
          ),
        ),
      );

  Widget buildUsername(String username) =>
      TextFormField(
        decoration: InputDecoration(
          labelText: username,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.length < 4) {
            return 'Enter at least 4 characters';
          } else {
            return null;
          }
        },
        maxLength: 20,
        onSaved: (value) => setState(() => username = value!),
      );

  Widget buildsubmit() =>
      RaisedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Form(child: widget,
          
        )));

      },
        child: Text("Submit"),
      );
}