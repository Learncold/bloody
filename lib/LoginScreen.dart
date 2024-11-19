import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignUpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 상단 탭 (개인용, 병원용)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  isSelected: [true, false],
                  borderRadius: BorderRadius.circular(20),
                  borderColor: Colors.grey.shade300,
                  selectedColor: Colors.white,
                  fillColor: Colors.red,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("개인용"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("병원용"),
                    ),
                  ],
                  onPressed: (int index) {
                    // 탭 전환 동작 (추가 구현 가능)
                  },
                ),
              ],
            ),
            SizedBox(height: 30),

            // "환영합니다!" 텍스트
            Text(
              "환영합니다!",
              style: GoogleFonts.notoSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // 아이디 입력 필드
            TextField(
              decoration: InputDecoration(
                labelText: "아이디 또는 이름",
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
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),

            // 비밀번호 찾기 링크
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "비밀번호를 잊으셨나요?",
                style: TextStyle(color: Colors.red),
              ),
            ),
            SizedBox(height: 20),

            // 로그인 버튼
            ElevatedButton(
              onPressed: () {
                // 로그인 버튼 동작 (추가 구현 가능)
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // primary 대신 backgroundColor 사용
                padding: EdgeInsets.symmetric(vertical: 15),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "로그인",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            SizedBox(height: 20),

            // 회원가입 링크
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("회원이 아니신가요? "),
                GestureDetector(
                  onTap: () {
                    // 회원가입 화면 이동 (추가 구현 가능)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "회원가입",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // 구분선과 소셜 로그인
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("or"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),

            // 소셜 로그인 버튼들
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                  iconSize: 40,
                  color: Colors.red,
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.apple),
                  iconSize: 40,
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  iconSize: 40,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
