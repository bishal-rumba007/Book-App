import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start_again/View/detail_page.dart';
import 'package:flutter_start_again/models/more_books.dart';
import 'package:get/get.dart';
import '../models/book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XFFF8F8F8),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
          child: AppBar(
            elevation: 0,
            title: Text(
              'Hi John,',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            backgroundColor: Color(0XFFF8F8F8),
            actions: [
              IconButton(onPressed: (){},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                    size: 25,
                  ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    CupertinoIcons.bell,
                    color: Colors.black,
                    size: 25,
                  ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: height * 0.19,
                width: width,
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.network(
                    'https://as2.ftcdn.net/v2/jpg/02/00/41/97/1000_F_200419783_GkD3huCUKfmXSRvqpSfjae0hHCc9kB2q.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                    final book = books[index];
                      return InkWell(
                        onTap: (){
                          Get.to(() => DetailPage(book: books[index],), transition: Transition.leftToRight);
                        },
                        child: Container(
                          height: 220,
                          width: 380,
                          margin: EdgeInsets.only(left: 4.0,),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                 width: 380,
                                 height: 170,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),

                                    child: Row(
                                      children: [
                                        Container(
                                          width: 150,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 200,
                                                child:
                                                Text(book.title,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                ),
                                              ),
                                              Container(
                                                width: 220,
                                                child:
                                                Text(book.overView, maxLines: 4,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(book.rating),
                                                  SizedBox(width: 25,),
                                                  Text(book.genreType,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0XFF007083),
                                                  ),
                                                  ),
                                                ],
                                              )
                                            ], //81D4FA
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 9,
                                child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(book.imageUrl,
                                        height: 200,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                ),
              ),

              SizedBox(height: 10,),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  'You may also like',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),

              SizedBox(height: 12,),

              Container(
                height: 250,
                width: double.infinity,
                margin: EdgeInsets.only(left: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moreBooks.length,
                  itemBuilder: (context, index) {
                    final booked = moreBooks[index];
                    return InkWell(
                        onTap: (){
                          Get.to(DetailPage(book: booked));
                        },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  booked.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),
                            Text(booked.title, textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(booked.genreType,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF007083),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
