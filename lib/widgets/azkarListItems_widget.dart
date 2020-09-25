import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/azkar_image_constructor.dart';
import '../screens/azkar_morning_screen.dart';

class AzkarListItems extends StatelessWidget {
  final List<AzkarListItemConstructor> _items = [
    AzkarListItemConstructor(
      image: 'assets/images/image1.png',
      title: 'Утром',
    ),
    AzkarListItemConstructor(
      image: 'assets/images/image2.png',
      title: 'Вечером',
    ),
    AzkarListItemConstructor(
      image: 'assets/images/image3.png',
      title: 'После молитвы',
    ),
    AzkarListItemConstructor(
      image: 'assets/images/image4.png',
      title: 'Важные дуа. Часть 1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: height * 0.8,
      padding: EdgeInsets.only(left: 5),
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) => Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  switch (index) {
                    case 0:
                      return AzkarMorning();
                      break;
                    default:
                      return AzkarMorning();
                  }
                }));
              },
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(_items[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * .09,
                    left: width * .03,
                    child: Text(
                      _items[index].title,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 17 / textScale,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.12,
                    left: width * .03,
                    child: Text(
                      'Посмотреть >',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12 / textScale,
                        color: Color(0xFF558B2F),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
