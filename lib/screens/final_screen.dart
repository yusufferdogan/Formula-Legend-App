import 'package:dreamf1team/Widgets/textWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data.dart';

class FinalScreen extends StatelessWidget {
  List<Color> list1 = [
    Colors.orange[100],
    Colors.orange[300],
    Colors.orange[500],
    Colors.orange[700],
    Colors.orange[900],
  ];

  List<Color> list2 = [
    Colors.amberAccent[100],
    Colors.amberAccent[300],
    Colors.amberAccent[500],
    Colors.amberAccent[700],
    Colors.amberAccent[900],
  ];

  List<Color> list3 = [
    Colors.purple[100],
    Colors.purple[300],
    Colors.purple[500],
    Colors.purple[700],
    Colors.purple[900],
  ];

  Widget pricipalBuilder(BuildContext context) {
    Size size = MediaQuery.of(context).size;

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return SafeArea(
      child: Container(
        color: Colors.red[100],
        child: Column(
          //   mainAxisSize: MainAxisSize.min,
          //    crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.01,
            ),
            Column(
              children: <Widget>[
                Data.selectedP == true
                    ? Container(
                        height: size.height * 0.2,
                        width: size.width * 0.5,
                        child: Image.asset(
                            Data.PRINCIPALDATA[Data.principalId].url),
                      )
                    : Container(
                        height: size.height * 0.2,
                        width: size.width * 0.5,
                        child: Image.asset('assets/images/question_mark.png'),
                      ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width * 0.5,
                  child: Text(
                    Data.selectedP == true
                        ? '${Data.PRINCIPALDATA[Data.principalId].name}'
                        : 'No Principal Selected ',
                    style: TextStyle(
                      fontSize: 20 * textScale,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /* SizedBox(
                  width: size.width * 0.1,
                ),*/
                  Column(children: <Widget>[
                    Container(
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      child: Image.asset(Data.selectedD == true
                          ? Data.DRIVERDATA[Data.driverId1].url
                          : 'assets/images/question_mark.png'),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width * 0.4,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          Data.selectedD == true
                              ? '${Data.DRIVERDATA[Data.driverId1].name}'
                              : 'No Driver Selected ',
                          style: TextStyle(
                            fontSize: 20 * textScale,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          child: Image.asset(Data.selectedD2 == true
                              ? Data.DRIVERDATA[Data.driverId2].url
                              : 'assets/images/question_mark.png'),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Container(
                          width: size.width * 0.4,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              Data.selectedD2 == true
                                  ? '${Data.DRIVERDATA[Data.driverId2].name}'
                                  : 'No Driver Selected ',
                              style: TextStyle(
                                fontSize: 20 * textScale,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
