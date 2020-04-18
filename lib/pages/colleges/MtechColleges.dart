import 'package:flutter/material.dart';

class MTechCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 50,
            backgroundColor:Colors.deepPurple,
            expandedHeight: 218.0,
            //floating: false,
            pinned: true,
            //snap: false,
            leading: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
              "Colleges",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              titlePadding: EdgeInsets.only(bottom: 14, left: 50),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
               Container(
                      height: 60,
                      width: 380,
                      child:Card(
                         
                          elevation: 15,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50.0,
                              height: 40.0,

                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(25.0),
                              //   color: Color(0xFFF17532)
                              // ),
                              child: Center(
                                child: Text(
                                  'Cspit',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                    ),

                    Container(
                      height: 60,
                      width: 380,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                         
                          elevation: 15,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50.0,
                              height: 40.0,

                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(25.0),
                              //   color: Color(0xFFF17532)
                              // ),
                              child: Center(
                                child: Text(
                                  'Gcet',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                    ),


                    Container(
                      height: 60,
                      width: 380,
                      child: Card(
                          
                          elevation: 15,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50.0,
                              height: 40.0,

                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(25.0),
                              //   color: Color(0xFFF17532)
                              // ),
                              child: Center(
                                child: Text(
                                  'Adit',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                    ),

                ]),
              itemExtent: 80.0),
                ],
      ),
      
    );
  }
}