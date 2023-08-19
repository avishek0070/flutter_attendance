import 'package:flutter/material.dart';

// build\app\outputs\flutter-apk\app-release.apk
class LoveCalculator extends StatefulWidget {
  @override
  _LoveCalculatorState createState() => _LoveCalculatorState();
}

class _LoveCalculatorState extends State<LoveCalculator> {
  final _aController = TextEditingController();
  final _bController = TextEditingController();
  final _cController = TextEditingController();
  final _dController = TextEditingController();
  String _result = '';
  bool _showResult = false;
  @override
  void dispose() {
    _aController.dispose();
    _bController.dispose();
    _cController.dispose();
    _dController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('ATTENDANCE CALCULATOR'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_result',
            style: TextStyle(fontSize: 68.0),
          ),
          SizedBox(
            width: 90,
            child: TextField(
              controller: _dController,
              decoration: InputDecoration(
                labelText: '%',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 195,
            child: TextField(
              controller: _aController,
              decoration: InputDecoration(
                // labelText: 'ENTER YOUR SUBJECT',
                hintText: 'ENTER YOUR SUBJECT',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 195,
                child: TextField(
                  controller: _bController,
                  decoration: InputDecoration(
                    labelText: 'NO. OF CLASSES ATTAINED',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: 195,
                child: TextField(
                  controller: _cController,
                  decoration: InputDecoration(
                    labelText: '  TOTAL',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              String a = _aController.text.trim(); //subjesct
              print(a);
              print("hlo");

              String b = _bController.text.trim(); //n1
              String c = _cController.text.trim(); //n2
              String d = _dController.text.trim(); //k
              // _aController.text = "";
              _bController.text = "";
              _cController.text = "";
              // _dController.text = "";
              int temp1 = int.parse(b);
              int n2 = int.parse(c);
              int n1 = int.parse(b);
              double k2 = (int.parse(d) / 100);
              print(n2);
              print(n1);
              int s = 0;
              while ((n1 / n2) < (k2)) {
                // print(n1 / n2);
                n1 = n1 + 1;
                n2 = n2 + 1;
                s++;
              }
              print(s);
              setState(() {
                _result = a.toUpperCase() + "-->" + (n1 - temp1).toString();
                _showResult = true;
              });
            },
            child: Text('CALCULATE'),
            // primary:
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATTENDANCE',
      home: LoveCalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
