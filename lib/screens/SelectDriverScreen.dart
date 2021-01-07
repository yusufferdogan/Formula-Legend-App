import 'package:dreamf1team/Widgets/PersonWidget.dart';
import 'package:dreamf1team/Widgets/textWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data.dart';

class SelectDriverScreen extends StatefulWidget {
  @override
  _SelectDriverScreenState createState() => _SelectDriverScreenState();
}

class _SelectDriverScreenState extends State<SelectDriverScreen> {

  List<Color> list1 = [
    Colors.blue[100],
    Colors.blue[300],
    Colors.blue[500],
    Colors.blue[700],
    Colors.blue[900],
  ];
  List<Color> list2 = [
    Colors.red[100],
    Colors.red[300],
    Colors.red[500],
    Colors.red[700],
    Colors.red[900],
  ];
  List<Color> list4 = [
    Colors.amber[100],
    Colors.amber[300],
    Colors.amber[500],
    Colors.amber[700],
    Colors.amber[900],
  ];

  int calculateSelectedDriverCount() {
    int count = 0;
    for (int i = 0; i < Data.DRIVERDATA.length; i++) {
      if (Data.DRIVERDATA[i].isSelected == true) count++;
    }
    return count;
  }

  void selectDriver(int index) {
    setState(() {
      Data.selectedDriverCount = calculateSelectedDriverCount();
      if (Data.selectedDriverCount == 0) {
        Data.driverId1 = index;
        int total = Data.Budget - Data.DRIVERDATA[Data.driverId1].salary;
        if (total >= 0) {
          Data.Budget -= Data.DRIVERDATA[Data.driverId1].salary;
          Data.DRIVERDATA[index].isSelected = true;
          Data.selectedD = true;
        }
      } else if (Data.selectedDriverCount == 1) {
        Data.driverId2 = index;
        int total = Data.Budget - Data.DRIVERDATA[Data.driverId2].salary;
        if (total >= 0) {
          Data.Budget -= Data.DRIVERDATA[Data.driverId2].salary;
          Data.DRIVERDATA[index].isSelected = true;
          Data.selectedD2 = true;
        }
      }
    });
  }

  void cancelDriver(int index) {
    setState(() {
      Data.selectedDriverCount = calculateSelectedDriverCount();
      if (Data.selectedD && index == Data.driverId1) {
        Data.DRIVERDATA[index].isSelected = false;
        Data.selectedD = false;
        Data.Budget += Data.DRIVERDATA[index].salary;
        Data.driverId1 = 0;
      } else if (Data.selectedD2 && index == Data.driverId2) {
        Data.DRIVERDATA[index].isSelected = false;
        Data.selectedD2 = false;
        Data.Budget += Data.DRIVERDATA[index].salary;
        Data.driverId2 = 0;
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
          SizedBox(height: size.height*0.02,),
          TextWidget(('Budget: \$${Data.Budget}'), 20*textScale, list4),
          SizedBox(height: size.height*0.02,),
          Container(
            height: size.height * 0.3,
            width: size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: Data.DRIVERDATA.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Stack(
                    children: <Widget>[
                      ClipRect(
                        child: Person(
                          name: Data.DRIVERDATA[index].name,
                          salary: Data.DRIVERDATA[index].salary,
                          imageUrl: Data.DRIVERDATA[index].url,
                        ),
                      ),
                      Data.DRIVERDATA[index].isSelected == true
                          ? Container(
                              child: Image.asset("assets/images/tick.png"),
                              height: 50,
                            )
                          : Container(
                              //child: Image.asset("assets/images/tick.png"),
                              height: 50,
                            )
                    ],
                  ),
                  splashColor: Colors.red,
                  onTap: () => selectDriver(index),
                  onLongPress: () => cancelDriver(index),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Data.selectedD == true
              ? TextWidget(
            '${Data.DRIVERDATA[Data.driverId1].name}  ',
            20,
            list1,
          )
              : TextWidget('No driver Selected', 16, list1),
          SizedBox(
            height: size.height * 0.05,
          ),
          Data.selectedD2 == true
              ? TextWidget('${Data.DRIVERDATA[Data.driverId2].name}  ', 20*textScale, list2)
              : TextWidget('No driver Selected', 16*textScale, list2),
        ],
      ),
    );
  }
}
