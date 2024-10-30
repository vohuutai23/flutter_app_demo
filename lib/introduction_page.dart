import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart'; // Nhớ tạo file này ở bước sau

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Giới thiệu Nhóm', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Giới thiệu thành viên nhóm 13:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  MemberInfo(
                    name: 'Võ Hữu Tài',
                    studentId: '21110294',
                    color: Colors.teal[100]!,
                  ),
                  MemberInfo(
                    name: 'Lê Trọng Dũng',
                    studentId: '21110157',
                    color: Colors.teal[100]!,
                  ),
                  MemberInfo(
                    name: 'Nguyễn Trần Văn Trung',
                    studentId: '21110335',
                    color: Colors.teal[100]!,
                  ),
                  MemberInfo(
                    name: 'Kiến Đức Trọng',
                    studentId: '21110332',
                    color: Colors.teal[100]!,
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

class MemberInfo extends StatelessWidget {
  final String name;
  final String studentId;
  final Color color;

  MemberInfo({
    required this.name,
    required this.studentId,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal[900]),
            ),
            SizedBox(height: 4),
            Text(
              studentId,
              style: TextStyle(fontSize: 16, color: Colors.teal[800]),
            ),
          ],
        ),
      ),
    );
  }
}
