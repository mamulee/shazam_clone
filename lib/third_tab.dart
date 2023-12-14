// 세번째 페이지
import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'global': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'newyork': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
    };

    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.grey],
                stops: [0.1, 0.1]),
          ),
          child: Column(
            children: [
              Text(
                '차트',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    color: Colors.purple[900],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Text(
                            "국가 및 도시별 차트",
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "전 세계",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 4),
              chartContainer("korea", chartData, context),
              chartContainer("global", chartData, context),
              chartContainer("newyork", chartData, context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget chartContainer(String region, Map data, BuildContext context) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
    padding: EdgeInsets.all(8),
    child: Column(children: [
      Row(children: [
        getRegion(region),
        Spacer(),
        Text(
          "모두 보기",
          style: TextStyle(color: Colors.blue),
        )
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...data[region]!.map((song) {
            return getSong(song, context);
          })
        ],
      ),
    ]),
  );
}

Text getRegion(String region) {
  String label = "";
  switch (region) {
    case 'korea':
      label = "대한민국";
      break;
    case 'global':
      label = "글로벌";
      break;
    case "newyork":
      label = "뉴욕";
      break;
    default:
      label;
  }
  return Text(
    "$label 차트",
    style: TextStyle(fontSize: 16),
  );
}

Widget getSong(Map song, BuildContext context) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            song['imageUrl'],
            width: MediaQuery.of(context).size.width * 0.29,
          ),
          Text(
            song['name'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(song['artist']),
        ],
      ),
    ),
  );
}
