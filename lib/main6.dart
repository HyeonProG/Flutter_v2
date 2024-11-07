import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatefulWidget {
  const MyApp6({super.key});

  @override
  State<MyApp6> createState() => _MyApp6State();
} // end of MyApp6

// _ --> private을 의미한다 --> dart 에서는 public, private 두 개만 사용
class _MyApp6State extends State<MyApp6> {
  // 멤버 변수
  int _count = 0; // private 변수

  int get count => _count; // getter 메서드

  @override
  void initState() {
    super.initState();
    // 객체가 메모리에 올라올 때 단 한번만 수행 시키는 메서드
    print('initState() 메서드 호출');
  }

  // 멤버 메서드
  @override
  Widget build(BuildContext context) {

    // 지역 변수
    print('build() 메서드 호출');

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
              _count++;
              print("_count : $count");
              });
            },
            child: Text('$_count'),
          ),
        ),
      ),
    );
  }
}
