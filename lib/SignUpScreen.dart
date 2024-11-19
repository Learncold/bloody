import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 안내 텍스트
              Text(
                "정보를 입력해주세요",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),

              // 성함 입력 필드
              TextField(
                decoration: InputDecoration(
                  labelText: "성함",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorText: null, // 오류 발생 시 메시지 설정 가능
                ),
              ),
              SizedBox(height: 20),

              // 성별 선택 드롭다운
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "성별",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: ["남성", "여성"]
                    .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
                    .toList(),
                onChanged: (value) {
                  // 선택한 값 처리
                },
              ),
              SizedBox(height: 20),

              // 거주지 입력 필드
              TextField(
                decoration: InputDecoration(
                  labelText: "거주지",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // 이메일 입력 필드
              TextField(
                decoration: InputDecoration(
                  labelText: "아이디(이메일)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // 비밀번호 입력 필드
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "비밀번호",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 20),

              // 비밀번호 확인 입력 필드
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "비밀번호 확인",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 30),

              // 회원가입 버튼
              ElevatedButton(
                onPressed: () {
                  // 회원가입 버튼 동작 추가 가능
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "회원가입",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
