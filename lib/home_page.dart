import 'package:flutter/material.dart';
import 'number_audio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numbersList = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.blue, "Two"),
    NumberAudio("three.wav", Colors.green, "Three"),
    NumberAudio("four.wav", Colors.pink, "Four"),
    NumberAudio("five.wav", Colors.grey, "Five"),
    NumberAudio("six.wav", Colors.orange, "Six"),
    NumberAudio("seven.wav", Colors.teal, "Seven"),
    NumberAudio("eight.wav", Colors.blueGrey, "Eight"),
    NumberAudio("nine.wav", Colors.brown, "Nine"),
    NumberAudio("ten.wav", Colors.purple, "Ten"),
  ];

  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spanish Audio Number"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: numbersList.length,
                  itemBuilder: (BuildContext context, index) => SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child: MaterialButton(
                      color: numbersList[index].buttonColor,
                      onPressed: () {
                        play(numbersList[index].audioUri);
                      },
                      child: Text(
                        numbersList[index].buttonText,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
