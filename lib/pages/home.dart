import 'package:career_hub/pages/bottom_bar.dart';
import 'package:career_hub/pages/career/career.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'dart:math' as math;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurple,
          elevation: 50.0,
          //centerTitle: true,
          title: Container(
              height: 200,
              color: Colors.deepPurple,
              margin: EdgeInsets.only(top: 13),
              child: Text('CareerHub',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 30.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 30.0, left: 17.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Career',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Exams',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('College',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Classes',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
        ),
        // child: AppBar(
        //   //, // hides leading widget
        //   // flexibleSpace: SomeWidget(),
        // )
      ),

      body: ListView(
        itemExtent: 600,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
              // padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ]))
        ],
      ),

      // bottomNavigationBar: BottomBar(),
    );
  }
}
