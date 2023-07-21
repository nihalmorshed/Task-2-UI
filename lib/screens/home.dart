import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../components/sliddingSheet.dart';
import 'scanner.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'images/Illustration.png',
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Sync Your Account',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text(
              'We need to know your connection details so that we can fetch the data for you.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, ScannerScreen.id);
              },
              icon: Icon(
                Icons.document_scanner_outlined,
              ),
              label: Text('SCAN THE BILL',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.purple,
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ElevatedButton.icon(
              onPressed: () {
                showSlidingBottomSheet(
                  context,
                  builder: (context) => SlidingSheetDialog(
                    elevation: 8,
                    cornerRadius: 16,
                    snapSpec: const SnapSpec(
                      snappings: [0.9, 1],
                    ),
                    builder: (context, state) {
                      return SlidingSheetWidget();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.description_rounded,
              ),
              label: Text('ADD MANUALLY',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue,
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 20,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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
