import 'package:flutter/material.dart';
import '../widgets/belowAppBarRow_widget.dart';
import '../screens/azkar_screen.dart';
import '../widgets/azkarPrayers_widget.dart';

class AzkarMorning extends StatefulWidget {
  static const routeName = '/azkar-morning';

  @override
  _AzkarMorningState createState() => _AzkarMorningState();
}

class _AzkarMorningState extends State<AzkarMorning> {
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
          onPressed: () {
            Navigator.of(context).pushNamed(Azkar.routeName);
          },
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
          AzkarPrayer(),
        ],
      ),
    );
  }
}
