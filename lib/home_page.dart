import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'genderify.dart';
import 'texts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(0, 15, 120, 10),
            Color.fromRGBO(120, 20, 150, 10)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 35, left: 11, right: 11),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Texts(
                            'Welcome To Machine Learning Kit in Flutter', 28)),
                    Icon(Icons.touch_app, size: 50, color: Colors.white),
                    Divider(color: Colors.blueAccent),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.indigoAccent,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Genderify()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.supervised_user_circle,
                              color: Colors.white, size: 25)),
                      Expanded(flex: 5, child: Texts('Genderify', 20)),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
