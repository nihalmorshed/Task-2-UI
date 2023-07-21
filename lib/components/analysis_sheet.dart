import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'avg_consumption.dart';
import 'consumar_card.dart';
import 'consumption.dart';
import 'edit_sheet.dart';

class AnalysisSheet extends StatefulWidget {
  AnalysisSheet({Key? key}) : super(key: key);

  @override
  State<AnalysisSheet> createState() => _AnalysisSheetState();
}

class _AnalysisSheetState extends State<AnalysisSheet> {
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
              Text(
                "Analyse Your Bill",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          CardWidget(),
          ConsumptionWidget(),
          AvgConsumption(),
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
                    return EditSheet();
                  },
                ),
              );
            },
            child: Text('PAY THE BILL',
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
