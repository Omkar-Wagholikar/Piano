import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.green,
    ),
    home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          WhiteKeys(),
          Column(
            children: [
              SizedBox(height: (MediaQuery.of(context).size.height)/4-20,),
              MyButton1(noteValue: 'note1',),
              SizedBox(height: (MediaQuery.of(context).size.height)/16,),
              MyButton1(noteValue: 'note2'),
              SizedBox(height: (MediaQuery.of(context).size.height)/16,),
              MyButton1(noteValue: 'note3'),
              SizedBox(height: (MediaQuery.of(context).size.height)/8+25,),
              MyButton1(noteValue: 'note4'),
              SizedBox(height: (MediaQuery.of(context).size.height)/16,),
              MyButton1(noteValue: 'note5'),
            ],
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {

  final String noteValue;

  //Constructor
  MyButton({required this.noteValue,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height/8-12,
          child: null,
        ),
        onTap: () async {
          AudioPlayer().play(AssetSource('$noteValue.wav'));
        }
    );
  }
}

class WhiteKeys extends StatelessWidget {
  const WhiteKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(noteValue: 'note1'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note7'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note6'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note5'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note4'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note3'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note2'),
        const SizedBox(height: 2,),
        MyButton(noteValue: 'note1'),
      ],
    );
  }
}

class MyButton1 extends StatelessWidget {

  final String noteValue;

  //Constructor
  MyButton1({required this.noteValue,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          width: (MediaQuery.of(context).size.width)/1.5,
          height: (MediaQuery.of(context).size.height)/16,
          child: null,
        ),
        onTap: () async {
          AudioPlayer().play(AssetSource('$noteValue.wav'));
        }
    );
  }
}

class BlackKeys extends StatelessWidget {
  const BlackKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 20,),
        MyButton1(noteValue: 'note1',),
        SizedBox(height: 20,),
        MyButton1(noteValue: 'note2'),
        SizedBox(height: 20,),
        MyButton1(noteValue: 'note3'),
        SizedBox(height: 20,),
        MyButton1(noteValue: 'note4'),
        SizedBox(height: 20,),
        MyButton1(noteValue: 'note5'),
      ],
    );
  }
}
