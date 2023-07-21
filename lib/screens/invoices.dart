import 'package:flutter/material.dart';

import '../components/consumar_card.dart';

class Invoices extends StatefulWidget {
  Invoices({Key? key}) : super(key: key);
  static const String id = 'invoices';

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return CardWidget();
        });
  }
}
