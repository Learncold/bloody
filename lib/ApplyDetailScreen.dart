import 'package:flutter/material.dart';

class ApplyDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상세보기'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/cu_50000.png'),
            SizedBox(height: 20),
            Text(
              "CU 편의점 5만원권",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("응모자: 128명"),
            Text("응모 기간: ~2024.11.01"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle apply action
              },
              child: Text("응모하기"),
            ),
          ],
        ),
      ),
    );
  }
}
