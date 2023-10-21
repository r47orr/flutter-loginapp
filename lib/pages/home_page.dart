import 'package:applogin/services/random_number_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;
  var clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
      ),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    width: double.infinity,
                    color: Colors.cyan,
                    child: Text(
                      'User actions:',
                      style: GoogleFonts.quicksand(fontSize: 20),
                    ))),
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.amber,
                  child: Text(
                    'Click count: $clickCount',
                    style: GoogleFonts.quicksand(fontSize: 20),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text(
                    'Generated number: ${number.toString()}',
                    style: GoogleFonts.quicksand(fontSize: 20),
                  ),
                )),
            Expanded(
                child: Container(
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.blue,
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Text(
                                    'Lorem Ipsum',
                                    style: GoogleFonts.quicksand(fontSize: 20),
                                  )),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.green,
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Text(
                                    'Hello, World!',
                                    style: GoogleFonts.quicksand(fontSize: 20),
                                  )),
                            )),
                      ],
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shuffle),
        onPressed: () {
          setState(() {
            clickCount++;
            number = RandomNumberService.randomNumber(20);
          });
        },
      ),
    );
  }
}
