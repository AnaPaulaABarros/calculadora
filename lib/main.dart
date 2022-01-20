import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String display = '';
  String operador = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          _biuldDisplay(),
          _biuldButtons1(),
          _biuldButtons2(),
          _biuldButtons3(),
          _biuldButtons4(),
        ],
      ),
    );
  }

  Widget _biuldDisplay() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        display,
        style: const TextStyle(fontSize: 40, color: Colors.white),
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget _biuldButtons1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('7');
              },
              child: const Text('7')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('8');
              },
              child: const Text('8')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('9');
              },
              child: const Text('9')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('/');
              },
              child: const Text('/')),
        ),
      ],
    );
  }

  Widget _biuldButtons2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('4');
              },
              child: const Text('4')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('5');
              },
              child: const Text('5')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('6');
              },
              child: const Text('6')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('*');
              },
              child: const Text('*')),
        ),
      ],
    );
  }

  Widget _biuldButtons3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('1');
              },
              child: const Text('1')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('2');
              },
              child: const Text('2')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('3');
              },
              child: const Text('3')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('-');
              },
              child: const Text('-')),
        ),
      ],
    );
  }

  Widget _biuldButtons4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                clearDisplay();
              },
              child: const Text('C')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('0');
              },
              child: const Text('0')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                operateOperations();
              },
              child: const Text('=')),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                pressbutton('+');
              },
              child: const Text('+')),
        ),
      ],
    );
  }

  void pressbutton (String text) {
    setState(() {
      display += text;
    });
  }

  void clearDisplay() {
    setState(() {
      display = '';
    });
  }

  void operateOperations() {
setState(() {
  if (display.contains('+')) {
   List<String> numbers = display.split('+');
   if (numbers.isNotEmpty) {
     int result = int.parse(numbers[0])+ int.parse(numbers[1]);
setState(() {
  display = result.toString();
}); 
   }
  }
});
setState(() {
  if (display.contains('-')) {
   List<String> numbers = display.split('-');
   if (numbers.isNotEmpty) {
     int result = int.parse(numbers[0]) - int.parse(numbers[1]);
setState(() {
  display = result.toString();
}); 
   }
  }
});
setState(() {
  if (display.contains('*')) {
   List<String> numbers = display.split('*');
   if (numbers.isNotEmpty) {
     int result = int.parse(numbers[0]) * int.parse(numbers[1]);
setState(() {
  display = result.toString();
}); 
   }
  }
});
setState(() {
  if (display.contains('/')) {
   List<String> numbers = display.split('/');
   if (numbers.isNotEmpty) {
     double result = double.parse(numbers[0]) / double.parse(numbers[1]);
setState(() {
  display = result.toString();
}); 
   }
  }
});

  }

}