import 'package:flutter/material.dart';


class BelowAppBarRow extends StatefulWidget {
  @override
  _BelowAppBarRowState createState() => _BelowAppBarRowState();
}

class _BelowAppBarRowState extends State<BelowAppBarRow> {
  List<String> _times = [
    '07:12',
    '12:43',
    '15:29',
    '18:11',
    '19:53',
  ];

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: height * .04,
      padding: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                ImageIcon(
                  AssetImage('assets/icons/location.png'),
                  color: Color(0xFF558B2F),
                ),
                Text(
                  'Москва',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 15 / textScale,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF558B2F),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: width * .02),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _times.length,
              itemBuilder: (context, index) => ActionChip(
                backgroundColor: Colors.white,
                shape: StadiumBorder(
                  side: BorderSide(
                      color: _selectedIndex == index
                          ? Color(0xFF558B2F)
                          : Colors.transparent,
                      width: 1.0),
                ),
                label: Text(
                  _times[index],
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12 / textScale,
                    color: _selectedIndex == index
                        ? Color(0xFF558B2F)
                        : Colors.black,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/notification.png'),
                color: Color(0xFF558B2F),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
