import 'package:flutter/material.dart';
import '../models/azkar_prayer_constructor.dart';

class AzkarPrayer extends StatelessWidget {
  final List<AzkarPrayerConstructor> _items = [
    AzkarPrayerConstructor(
        title: 'Утренний азкар №1',
        header:
            'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَ أَنَا عَبْدُكَ وَ أَنَا عَلَى عَهْدِكَ وَ\n وَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُّ أَبُوءُ لَكَ بِنِعْمَتِكَ\nعَلَيَّ وَ أَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
        content:
            'О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)',
        subcontent:
            'Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана \'абду-кя, ва ана "аля \'ахди-кя ва ва\'ди-кя ма-стата\'ту. А\'узу би-кя мин шарри ма сана\'ту, абу\'у ля-кя би-ни\'мати-кя \'аляййя, ва абу\'у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!'),
    AzkarPrayerConstructor(
      title: 'Утренний азкар №2',
      header:
          'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَ لَهُ الْحَمْدُ وَ هُوَ عَلَى كُلِّ \nشَيْءٍ قَدِيرٌ',
      content:
          'Нет достойного поклонения, кроме одного лишь Аллаха, у которого нет  сотоварища, Ему принадлежит владычество, Ему хвала, Он всё может" 10 раз. (Ахмад)',
      subcontent:
          'Ля иляха илля-Ллаху вахда-ху ля шарикя ля-ху, ля-ху-ль-мульку ва ля-ху-ль-хамду ва хуа \'аля кулли шайин кадир.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: height * 0.83,
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: height *.05,
              padding: EdgeInsets.only(left: 23),
              alignment: Alignment.centerLeft,
              child: Text(
                _items[index].title,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                  fontSize: 17 / textScale,
                  color: Color(0xFF3D3D3D),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: width,
                    margin: EdgeInsets.only(left: width * 0.18),
                    child: FittedBox(
                      child: Text(
                        _items[index].header,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14 / textScale,
                          color: Color(0xFF3D3D3D),
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  SizedBox(height: height * .02),
                  Text(
                    _items[index].content,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 15 / textScale,
                      color: Color(0xFF3D3D3D),
                    ),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.ltr,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Text(
                    _items[index].subcontent,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 15 / textScale,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF3D3D3D),
                    ),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
