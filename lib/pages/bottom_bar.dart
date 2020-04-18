import 'package:career_hub/pages/profile.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    Feed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Travel Budget App"),
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          elevation: 3,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text("Profile"),
            ),
          ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


// import 'package:flutter/material.dart';

// class BottomBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//      return Container(
//     //   color: Colors.red,
//     //   width: 200,

//     //   //elevation: 10.0,
//     //   //clipBehavior: Clip.antiAlias,
//     //   child: Container(
//         height: 60.0,
//         width: 120,
//         margin: EdgeInsets.only(bottom: 20, left:80, right: 70, top: 0),
        
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(25.0),
//             //Colors.red,
//             // topRight: Radius.circular(25.0),
//             // bottomLeft: Radius.circular(25.0),
//             // bottomRight: Radius.circular(25.0),
//           ),
//           color: Colors.white,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 50.0,
//               width:200,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Icon(Icons.home, color: Color(0xFFEF7532)),
//                   Icon(Icons.person_outline, color: Color(0xFF676E79))
//                 ],
//               )
//             ),
//           ]
//         )
      
//     );
//   }
// }

