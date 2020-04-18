import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CookieDetail extends StatelessWidget {
  List<Color> _colors = [Color(0xff551A8B), Colors.deepPurple];

//   Color(0xff551A8B), Colors.deepPurple
  List<double> _stops = [0.0, 0.9];
  Widget divider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
      child: Container(
        width: 0.8,
      ),
    );
  }
 
  String name, info, eligi, addmi, college;
  CookieDetail({this.name, this.info, this.eligi, this.addmi, this.college});
  


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
                name != null ? name : 'Exam',
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
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(9),
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 200,
                      width: 180,
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        title: Text("Basic Information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                fontFamily: 'Montserrat',
                                color: Colors.deepPurple)),
                        subtitle: Text(info != null ? info : 'Info',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(9),
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      color: Colors.white,
                      height: 200,
                      child: ListTile(
                        title: Text('Eligibility For $name Program',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              fontFamily: 'Montserrat',
                              color: Colors.deepPurple,
                            )),
                        subtitle: Text(eligi != null ? eligi : 'Eligi',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(9),
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      color: Colors.white,
                      height: 200,
                      child: ListTile(
                        title: Text('Addmission',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              fontFamily: 'Montserrat',
                              color: Colors.deepPurple,
                            )),
                        subtitle: Text(addmi != null ? addmi : 'Addmi',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                ),

                Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 380,
                      child: GradientCard(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          gradient:
                              LinearGradient(colors: _colors, stops: _stops),
                          shadowColor: Gradients.buildGradient(
                                  Alignment.bottomLeft,
                                  Alignment.bottomRight,
                                  _colors)
                              .colors
                              .last
                              .withOpacity(0.50),
                          elevation: 15,
                          child: GestureDetector(
                            onTap: () {
                                
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50.0,
                              height: 40.0,

                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(25.0),
                              //   color: Color(0xFFF17532)
                              // ),
                              child: Center(
                                child: Text(
                                  'Colleges',
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
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 60,
                      width: 380,
                      child: GradientCard(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          gradient:
                              LinearGradient(colors: _colors, stops: _stops),
                          shadowColor: Gradients.buildGradient(
                                  Alignment.bottomLeft,
                                  Alignment.bottomRight,
                                  _colors)
                              .colors
                              .last
                              .withOpacity(0.50),
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
                                  'Colleges',
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
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 60,
                      width: 380,
                      child: GradientCard(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          gradient:
                              LinearGradient(colors: _colors, stops: _stops),
                          shadowColor: Gradients.buildGradient(
                                  Alignment.bottomLeft,
                                  Alignment.bottomRight,
                                  _colors)
                              .colors
                              .last
                              .withOpacity(0.50),
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
                                  'Colleges',
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
                  ],
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 25),
                            height: 50,
                            width: 200.5,
                            child: Row(children: <Widget>[
                              Icon(
                                Icons.swap_horizontal_circle,
                                size: 30,
                                color: Colors.grey,
                              ),
                              divider(),
                              Text(
                                '''Help
Community''',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ])),
                        Container(
                            padding: EdgeInsets.only(left: 35),
                            height: 50,
                            width: 190.5,
                            child: Row(children: <Widget>[
                              Icon(
                                Icons.people,
                                size: 30,
                                color: Colors.grey,
                              ),
                              divider(),
                              Text(
                                '''Share
Books''',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ])),
                      ]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 25),
                            height: 50,
                            width: 200.5,
                            child: Row(children: <Widget>[
                              Icon(
                                Icons.contact_phone,
                                size: 30,
                                color: Colors.grey,
                              ),
                              divider(),
                              Text(
                                '''Improve
Communication''',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ])),
                        Container(
                            padding: EdgeInsets.only(left: 35),
                            height: 50,
                            width: 190.5,
                            child: Row(children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: 30,
                                color: Colors.grey,
                              ),
                              divider(),
                              Text(
                                '''Save
Money''',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ])),
                      ]),
                ),
              ]),
              itemExtent: 200.0)
        ],
      ),
    );
  }
}
