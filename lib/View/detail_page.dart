import 'package:flutter/material.dart';
import 'package:flutter_start_again/View/Read_more.dart';
import 'package:get/get.dart';
import '../models/book.dart';


class DetailPage extends StatelessWidget {

  final Book book;
  DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
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
            height: 320,
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
                SizedBox(height: 15,),
                Container(
                  height: 70,
                  width: double.infinity,
                  //color: Colors.lightBlueAccent,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          book.title,
                          style: TextStyle(
                            fontSize: 25,
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
                                  SizedBox(height: 6,),
                                  Text(book.genreType,
                                    style: TextStyle(
                                      fontSize: 13,
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
                SizedBox(height: 8,),
                Container(
                  height: 200,
                  width: double.infinity,
                  //color: Colors.lightBlueAccent,
                  child: Text(
                    book.overView,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(170, 55),
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
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ),
                      SizedBox(width: 26,),
                      OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(170, 55),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                          child: Text('More info',
                            style: TextStyle(
                                fontSize: 18,
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
