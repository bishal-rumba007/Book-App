import 'package:flutter/material.dart';
import 'package:flutter_start_again/View/book_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
