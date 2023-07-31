import 'package:codelabone_app/widgets/app_header.dart';
import 'package:codelabone_app/widgets/app_search.dart';
import 'package:codelabone_app/widgets/mount_widget.dart';
import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: MountsApp() //SplashPage(),
      ));
}

class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            SizedBox(
              width: 40,
              height: 40,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: mainColor),
          title: const Center(
            child: Icon(
              Icons.terrain,
              color: mainColor,
              size: 40,
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            padding: const EdgeInsets.all(30),
            color: mainColor,
            alignment: Alignment.bottomLeft,
            child: const Icon(
              Icons.terrain,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
            AppSearch(),
            Expanded(child: AppMountListView())
          ],
        ));
  }
}
