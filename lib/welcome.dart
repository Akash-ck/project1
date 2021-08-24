import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, email, imo, port, captain;
  WelcomePage(
      {Key? key,
      required this.name,
      required this.email,
      required this.imo,
      required this.captain,
      required this.port})
      : super(key: key);

  get myProducts => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext ctx, index) {
          return Dismissible(
            key: UniqueKey(),

            direction: DismissDirection.endToStart,

            onDismissed: (_) {
              showAlertDialog(context);

              myProducts.removeAt(index);
            },




            // Display item's title, price...
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                title: Text(name),
                subtitle: Text(email),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(imo),
                    SizedBox(
                      width: 15,
                    ),
                    Text(captain),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            ),

            background: Container(
              height: 500,
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    ));
  }
}
showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {

      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("File deleted"),
    content: Text("Press ok"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}