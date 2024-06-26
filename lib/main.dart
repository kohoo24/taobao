import 'package:flutter/material.dart';
import 'package:taobaocopyapp/detail_page.dart';
import 'package:taobaocopyapp/detail_page01.dart';
import 'package:taobaocopyapp/detail_page02.dart';
import 'package:taobaocopyapp/purchase_history.dart';
import 'package:taobaocopyapp/widgets/detail_page03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PurchaseHistory(),
    );
  }
}
