import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramadhan_app/model/doa.dart';
import 'package:ramadhan_app/utils/custom_widget.dart';
import 'detail_doa.dart';

class AllDoaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Colors.white,
        title: Text('Panduan Puasa Ramadhan'),
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: dataListDoa.map((list) {
            return Container(
              height: 50,
              margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[500]))),
              child: RaisedButton(
                elevation: 0,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation, curve: Curves.elasticInOut);
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return DetailDoa(
                              title: list,
                            );
                          }));
                },
                child: ListTile(
                  title: Text(list.title, style: listTitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
