import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatefulWidget {
  const MyApp7({super.key});

  @override
  State<MyApp7> createState() => _MyApp7State();
}

class _MyApp7State extends State<MyApp7> {
  // bool 데이터 타입과 bool? 타입은 다른 것
  // ? --> 옵셔널 --> null 허용
  bool? _checkBoxValue = true;
  String _radioValue = 'Option 1';
  double _sliderValue = 0;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp7'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              const SizedBox(height: 16.0),
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  print('value : $value');
                  setState(() {
                    _checkBoxValue = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text('Radio Button'),
              Row(
                children: [
                  Radio(
                    value: '축구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('축구'),
                  Radio(
                    value: '농구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('농구'),
                ],
              ),
              // Slider
              Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      print('value : $value');
                      _sliderValue = value;
                    });
                  }),
              // Switch
              Switch(value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      print('value : $value');
                      _switchValue = value;
                    });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
