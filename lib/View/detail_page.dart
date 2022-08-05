import 'package:flutter/material.dart';
import 'package:flutter_start_again/View/Read_more.dart';
import 'package:flutter_start_again/View/more_info.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../models/book.dart';


class DetailPage extends StatelessWidget {
  final Book book;
  DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(280),
      //   child: AppBar(
      //     elevation: 0,
      //     centerTitle: true,
      //     automaticallyImplyLeading: false,
      //     flexibleSpace: Container(
      //       color: Colors.blue,
      //         child: FittedBox(
      //           child: Image.network(book.imageUrl),
      //           fit: BoxFit.fill,
      //         )
      //         // fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),

      body: Column(
        children: [
          Container(
            height: height * 0.40,
            width: double.infinity,
            child: FittedBox(
              child: Image.network(book.imageUrl),
                fit: BoxFit.fill,
              ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child: Column(
              children: [
                SizedBox(height: height * 0.01,),
                Container(
                  height: height * 0.1,
                  width: double.infinity,
                  //color: Colors.lightBlueAccent,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          book.title,
                          style: TextStyle(
                            fontSize: 18.4.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(book.rating),
                                  SizedBox(height: height * 0.01),
                                  Text(book.genreType,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0XFF007083),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  )
                ),
                SizedBox(height: height * 0.01,),
                Container(
                  height: height * 0.28,
                  width: double.infinity,
                  //color: Colors.lightBlueAccent,
                  child: Text(
                    book.overView,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

                //SizedBox(height: 10,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(width * 0.4, height * 0.07),
                          primary: Colors.white,
                          backgroundColor: Color(0XFF007083),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        onPressed: () {
                          Get.to(ReadMore());
                        },
                        child: Text('Read Book',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ),
                      SizedBox(width: width * 0.1,),
                      OutlinedButton(
                          onPressed: (){
                            Get.to(MoreInfo());
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(width * 0.4, height * 0.07),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                          child: Text('More info',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                            ),
                          ),
                      )

                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      );
  }
}
