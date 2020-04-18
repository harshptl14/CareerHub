import 'package:flutter/material.dart';
import 'package:career_hub/pages./career/careerDetail.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CookiePage extends StatelessWidget {
  List<Color> _colors = [  Color(0xff551A8B), Colors.deepPurple];
  List<double> _stops = [0.0, 0.9];

  var list = [
    {
      "name": "MTECH",
      "info":
          "Master of Technology (M.Tech)is the higher specialized course in the field of engineering. M.Tech provides you the insight and deep knowledge of the subjects that you have studied in your B.Tech course.",
      "eligi":
          "The students have to obtained at least a college level Bachelor’s degree in Technology (B.Tech) in related field with qualified marks.",
      "addmi":
          "GATE is the national Level Examm which provides admission in IITs. GATE scores are also accepted in other engineering institutions",
      "college": "MTechCollege()"
    },
    {
      "name": "MBA",
      "info":
          "Master of Business Administration(MBA) is the higher specialized course in the field of engineering. MBA provides you the insight and deep knowledge of Business and management.",
      "eligi":
          "The candidates have to clear the entrance examination, which is accepted by the desired institution. Any graduates can eligible for the Entrance test. The ranking procedure Followed by the Universities for admission. The minimum Eligibility is 50% marks.",
      "addmi": "MBA Course admission in a reputed institution is to have a decent score in the Common Admission test (CAT). The CAT Entrance test  Most of the B- Schools in India accept any of the scores of the test",
      "college": "mTechCollege()"
    },
    {
      "name": "START\nUP",
     "info":
          "Master of Technology (M.Tech)is the higher specialized course in the field of engineering. M.Tech provides you the insight and deep knowledge of the subjects that you have studied in your B.Tech course.",
      "eligi":
          "The students have to obtained at least a college level Bachelor’s degree in Technology (B.Tech) in related field with qualified marks.",
      "addmi":
          "GATE is the national Level Examm which provides admission in IITs. GATE scores are also accepted in other engineering institutions",
      "college": "mTechCollege()"
    },
    {
      "name": "JOB",
      "info":
          "Master of Technology (M.Tech)is the higher specialized course in the field of engineering. M.Tech provides you the insight and deep knowledge of the subjects that you have studied in your B.Tech course.",
      "eligi":
          "The students have to obtained at least a college level Bachelor’s degree in Technology (B.Tech) in related field with qualified marks.",
      "addmi":
          "GATE is the national Level Examm which provides admission in IITs. GATE scores are also accepted in other engineering institutions",
      "college": "mTechCollege()"
    },
    {
      "name": "MS\nABROAD",
       "info":
          "Master of Technology (M.Tech)is the higher specialized course in the field of engineering. M.Tech provides you the insight and deep knowledge of the subjects that you have studied in your B.Tech course.",
      "eligi":
          "The students have to obtained at least a college level Bachelor’s degree in Technology (B.Tech) in related field with qualified marks.",
      "addmi":
          "GATE is the national Level Examm which provides admission in IITs. GATE scores are also accepted in other engineering institutions",
      "college": "mTechCollege()"
    },
    {
      "name": "MBA\nABROAD",
      "info":
          "Master of Technology (M.Tech)is the higher specialized course in the field of engineering. M.Tech provides you the insight and deep knowledge of the subjects that you have studied in your B.Tech course.",
      "eligi":
          "The students have to obtained at least a college level Bachelor’s degree in Technology (B.Tech) in related field with qualified marks.",
      "addmi":
          "GATE is the national Level Examm which provides admission in IITs. GATE scores are also accepted in other engineering institutions",
      "college": "mTechCollege()"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 255, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          Container(
              margin: EdgeInsets.only(right: 5.0, left: 5.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.builder(
                itemCount: list.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                 ),
                itemBuilder: (BuildContext context, int index) {
                  return _buildCard(
                      list[index]['name'],
                      list[index]['info'],
                      list[index]['eligi'],
                      list[index]['addmi'],
                      list[index]['college'],
                      context);
                },
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
    String name,
    String info,
    String eligi,
    String addmi,
    String college,
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CookieDetail(
                  // assetPath: imgPath, cookieprice: price,
                  name: name,
                  info: info,
                  eligi: eligi,
                  addmi: addmi,
                  college: college,
                  )));
        },
        child: Container(
          height: 200,
          width: 500,
          child: Card(
              //gradient: LinearGradient(colors: _colors, stops: _stops),
              // shadowColor: Gradients.buildGradient(
              //         Alignment.bottomLeft, Alignment.bottomRight, _colors)
              //     .colors
              //     .last
              //     .withOpacity(0.50),
              elevation: 30,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.all(25),
                //margin: EdgeInsets.only(top:100),
                alignment: Alignment.center,
                child: Text(name,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.w500,
                      fontSize: 27.0,
                    )),
              )),
        ),
      ),
    );
  }
}
