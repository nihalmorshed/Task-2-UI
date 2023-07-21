import 'package:flutter/material.dart';

import 'consumption.dart';

class Info extends StatefulWidget {
  Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  List<bool> isSelected = [true, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        margin: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage(
                  'images/BG Mask.png',
                ),
                fit: BoxFit.scaleDown,
                alignment: Alignment.topRight),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Latest Invoice",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "৳ 1,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      "+৳ 132.34",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Last Synced ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      "12th June 2021",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      ConsumptionWidget(),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Divider(),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      ToggleButtons(
        borderRadius: BorderRadius.circular(20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              "6 months",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              "1 year",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        isSelected: isSelected,
        onPressed: (index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xff57AEFE),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text("Units Consumed"),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xff6C71FF),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text("Amount Paid"),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      Image.asset(
        "images/Chart.png",
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
      )
    ]);
  }
}
