import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramadhan_app/doa/list_doa.dart';
import 'header_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ListDoa()
          ],
        ),
      ),
    );
  }
}