import 'package:flutter/material.dart';
import '../widgets/belowAppBarRow_widget.dart';
import '../widgets/azkarListItems_widget.dart';

class Azkar extends StatefulWidget {
  static const routeName = '/azkar-screen';

  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF558B2F),
            size: 25,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Азкары',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF3D3D3D),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Divider(),
          BelowAppBarRow(),
          Divider(),
          AzkarListItems(),
        ],
      ),
    );
  }
}
