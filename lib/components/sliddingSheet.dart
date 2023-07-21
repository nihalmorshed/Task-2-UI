import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'analysis_sheet.dart';
import 'consumar_card.dart';

class SlidingSheetWidget extends StatefulWidget {
  SlidingSheetWidget({Key? key}) : super(key: key);

  @override
  State<SlidingSheetWidget> createState() => _SlidingSheetWidgetState();
}

class _SlidingSheetWidgetState extends State<SlidingSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          CardWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Board Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "NESCO",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
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
                "S&D/ESU",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "Rajshahi S&D1",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
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
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "Siam Ahmed",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              showSlidingBottomSheet(
                context,
                builder: (context) => SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  snapSpec: const SnapSpec(
                    snappings: [0.9, 1],
                  ),
                  builder: (context, state) {
                    return AnalysisSheet();
                  },
                ),
              );
            },
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
    );
  }
}
