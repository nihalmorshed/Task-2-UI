import 'package:flutter/material.dart';

class EditSheet extends StatefulWidget {
  EditSheet({Key? key}) : super(key: key);

  @override
  State<EditSheet> createState() => _EditSheetState();
}

class _EditSheetState extends State<EditSheet> {
  int _boardValue = 1;
  int _esuValue = 1;
  int _customerValue = 1;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: Text('')),
              ],
            ),
            Image.asset(
              'images/Vector (Stroke).png',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Your Bill Info",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "We’ve fetched the details from your bill.\nPlease verify the details.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Board Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueGrey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
            DropdownButton(
              isExpanded: true,
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              iconSize: 30,
              icon: Icon(Icons.arrow_drop_down),
              items: [
                DropdownMenuItem(
                  child: Text("NESCO"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("DESCO"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("DPDC"),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text("WZPDCL"),
                  value: 4,
                ),
              ],
              value: _boardValue,
              onChanged: (value) {
                setState(() {
                  _boardValue = value as int;
                });
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "S&D/ESU",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueGrey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
            DropdownButton(
              isExpanded: true,
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              iconSize: 30,
              icon: Icon(Icons.arrow_drop_down),
              items: [
                DropdownMenuItem(
                  child: Text("Rajshahi S&D1"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Rajshahi S&D2"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Dhaka S&D3"),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text("Rangpur S&D2"),
                  value: 4,
                ),
              ],
              value: _esuValue,
              onChanged: (value) {
                setState(() {
                  _esuValue = value as int;
                });
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Customer Number",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueGrey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
            DropdownButton(
              isExpanded: true,
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              iconSize: 30,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
              ),
              icon: Icon(Icons.arrow_drop_down),
              items: [
                DropdownMenuItem(
                  child: Text("102340000001242"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("102340000001243"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("102340000001244"),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text("102340000001245"),
                  value: 4,
                ),
              ],
              value: _customerValue,
              onChanged: (value) {
                setState(() {
                  _customerValue = value as int;
                });
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feeder Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Binodpur",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Customer Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Siam Ahmed",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONTINUE',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xffA057FE),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 20,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
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
