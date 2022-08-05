import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_start_again/View/book_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';


void main(){

  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Colors.black87,
  //   )
  // );
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType)
      {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
