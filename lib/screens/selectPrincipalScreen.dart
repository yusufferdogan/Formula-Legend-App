import 'package:dreamf1team/Widgets/PersonWidget.dart';
import 'package:dreamf1team/Widgets/textWidget.dart';
import 'package:dreamf1team/Widgets/textWidget.dart';
import 'package:dreamf1team/Widgets/textWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data.dart';

class SelectPrincipalScreen extends StatefulWidget {
  @override
  _SelectPrincipalScreenState createState() => _SelectPrincipalScreenState();
}

class _SelectPrincipalScreenState extends State<SelectPrincipalScreen> {

  List<Color> list3 = [
    Colors.green[100],
    Colors.green[300],
    Colors.green[500],
    Colors.green[700],
    Colors.green[900],
  ];
  List<Color> list4 = [
    Colors.amber[100],
    Colors.amber[300],
    Colors.amber[500],
    Colors.amber[700],
    Colors.amber[900],
  ];

  void selectPrincipal(int index) {
    setState(() {
      if (Data.selectedP == false) {
        Data.principalId = index;
        int total = Data.Budget - Data.PRINCIPALDATA[Data.principalId].salary;
        if (total >= 0) {
          Data.Budget -= Data.PRINCIPALDATA[Data.principalId].salary;
          Data.PRINCIPALDATA[index].isSelected = true;
          Data.selectedP = true;
        }
      }
    });
  }

  void cancelPrincipal(int index) {
    setState(() {
      if (Data.selectedP == true) {
        Data.principalId = index;
        Data.PRINCIPALDATA[index].isSelected = false;
        Data.selectedP = false;
        Data.Budget += Data.PRINCIPALDATA[index].salary;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Container(
      color: Colors.red[100],
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.05,
          ),
          TextWidget(('Budget: \$${Data.Budget}'), 20*textScale, list4),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            height: size.height * 0.25,
            width: size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: Data.PRINCIPALDATA.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Stack(
                    children: <Widget>[
                      ClipRect(
                        child: Person(
                          name: Data.PRINCIPALDATA[index].name,
                          salary: Data.PRINCIPALDATA[index].salary,
                          imageUrl: Data.PRINCIPALDATA[index].url,
                        ),
                      ),
                      Data.PRINCIPALDATA[index].isSelected == true
                          ? Container(
                              child: Image.asset("assets/images/tick.png"),
                              height: 50,
                            )
                          : Container(
                              //child: Image.asset("assets/images/tick.png"),
                              //  height: 50,
                              )
                    ],
                  ),
                  splashColor: Colors.red,
                  onTap: () => selectPrincipal(index),
                  onLongPress: () => cancelPrincipal(index),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),

          SizedBox(
            height: size.height * 0.1,
          ),
          Data.selectedP == true
              ? TextWidget(
              '${Data.PRINCIPALDATA[Data.principalId].name} ', 20*textScale, list3)
              : TextWidget('No Team Principal selected', 16*textScale, list3),
        ],

      ),
    );
  }
}
