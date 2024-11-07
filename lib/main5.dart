import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // TextEditingController로 TextField의 controller에 넣을 객체를 선언
  // TextEditingController와 FocusNode를 선언하여 TextField 상태 관리
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  bool _isFocused1 = false;
  bool _isFocused2 = false;

  @override
  Widget build(BuildContext context) {
    // Focus 상태 변경에 따라 화면 갱신
    _focusNode1.addListener(() {
      _isFocused1 = _focusNode1.hasFocus;
      (context as Element).markNeedsBuild();
    });
    _focusNode2.addListener(() {
      _isFocused2 = _focusNode2.hasFocus;
      (context as Element).markNeedsBuild();
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF9F6),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFF9F6),
          title: Text('로그인'),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 80,
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _emailController,
                  focusNode: _focusNode1,
                  decoration: InputDecoration(
                    labelText: '이메일',
                    hintText: '',
                    labelStyle: TextStyle(color: Colors.brown),
                    hintStyle: TextStyle(color: Colors.brown),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: _isFocused1 ? Icon(Icons.clear) : null,
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _passwordController,
                  focusNode: _focusNode2,
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '',
                    labelStyle: TextStyle(color: Colors.brown),
                    hintStyle: TextStyle(color: Colors.brown),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    prefixIcon: _isFocused2
                        ? Icon(Icons.lock_open_outlined)
                        : Icon(Icons.lock_outline),
                    suffixIcon: _isFocused2 ? Icon(Icons.clear) : null,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print(_emailController.text);
                    print(_passwordController.text);
                  },
                  child: Text('로그인'),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    print('비밀번호 찾기');
                  },
                  child: Text('비밀번호를 잊으셨나요?'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('계정이 없으신가요?'),
                    TextButton(
                      onPressed: () {
                        print('회원가입');
                      },
                      child: Text('회원가입'),
                    ),
                  ],
                ),
                Divider(color: Colors.brown, thickness: 0.7),
                SizedBox(height: 20),
                TextButton.icon(
                  onPressed: () {
                    print('구글 로그인');
                  },
                  icon: Icon(Icons.g_mobiledata),
                  label: Text('Google로 로그인'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
