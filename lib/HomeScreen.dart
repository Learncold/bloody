import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "현재 전국에 사용 가능한 증서",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.red[50],
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("3,689개", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("내가 기부한 증서: 7개"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "기부한 증서를 응모하기",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/apply');
              },
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/cu_50000.png'), // Use asset images
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Image.asset('assets/starbucks.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "진행중인 이벤트",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text('2024년 3천개 기부 캠페인 진행중'),
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text('2024년 5천개 기부 캠페인 시작 예정'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
