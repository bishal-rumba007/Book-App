import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () => Navigator.pop(context, runtimeType),
            icon: Icon(Icons.menu),
        ),
        title: Text('Namaste'),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.check),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Center(child: Text("Welcome to Reading section",
              style: TextStyle(
                    fontSize: 20,
                fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
