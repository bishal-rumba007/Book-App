import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MoreInfo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    final topBar = MediaQuery.of(context).padding.top;
    print(topBar);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.25,
              width: double.infinity,
              color: Colors.deepPurple,
              child: Center(child: Text("Responsive Text!", style: TextStyle(fontSize: 20.sp),)),
            ),
            Container(
              height: height * 0.25,
              width: width,
              color: Colors.pinkAccent,
            ),
            Container(
              height: height * 0.25,
              width: double.infinity,
              color: Colors.grey,
            ),
            Container(
              height: height * 0.25,
              width: double.infinity,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
