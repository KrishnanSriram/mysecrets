import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SegemntDetailsPage extends StatelessWidget {
  final String selectedTitle;
  const SegemntDetailsPage({required this.selectedTitle});
  // const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("More details $selectedTitle")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("You selected - $selectedTitle"),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go BACK'),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}