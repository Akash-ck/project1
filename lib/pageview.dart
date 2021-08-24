import 'package:flutter/material.dart';
import 'package:webcastle/welcome.dart';
import 'package:webcastle/widget/button_widget.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Forms> {
  TextEditingController _name = TextEditingController();
  TextEditingController _imo = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _port = TextEditingController();
  TextEditingController _captain = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String imo = '';
  String port = '';
  String captain = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: "Vessel Name",
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
                onSaved: (value) => setState(() => name = value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _imo,
                decoration: InputDecoration(
                  labelText: "Vessel IMO",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.length < 4) {
                    return 'Enter at least 4 characters';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() => imo = value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Vessel Email",
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
                onSaved: (value) => setState(() => email = value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _port,
                decoration: InputDecoration(
                  labelText: "Registerd Post",
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
                onSaved: (value) => setState(() => port = value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _captain,
                decoration: InputDecoration(
                  labelText: "Captain",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.length < 4) {
                    return 'Enter at least 4 characters';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() => captain = value!),
              ),
            ),
            ElevatedButton(
                onPressed: () {


                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WelcomePage(
                              name: _name.text,
                              imo: _imo.text,
                              email: _email.text,
                              port: _port.text,
                              captain: _captain.text,
                            )));

                },
                child: Text('Details Page'))
          ],
        ),
      ),
    );
  }
}
