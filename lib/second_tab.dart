// 두번째 페이지
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 86, 190, 255),
            Color.fromARGB(255, 7, 31, 117)
          ])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Column(
            children: [
              Icon(Icons.person),
              Text(
                "라이브러리",
                style: TextStyle(fontSize: 11),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    Icon(Icons.show_chart),
                    Text(
                      "차트",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ))
          ],
        ),
        body: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Center(
            child: Text(
              "Shazam하려면 탭하세요",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              shape: BoxShape.circle,
            ),
            child: Image.network(
              "https://i.ibb.co/hxNbZ8p/shazam.png",
              color: Colors.white,
              width: 130,
              height: 130,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.12),
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue[400],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ]),
      ),
    );
  }
}
