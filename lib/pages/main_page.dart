import 'package:flutter/material.dart';
import 'package:applogin/pages/registered_data.dart';
import 'package:applogin/pages/example_page_one.dart';
import 'package:applogin/pages/example_page_two.dart';
import 'package:applogin/pages/example_page_three.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Página principal'),
            ),
            drawer: Drawer(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DataPage(
                                        param: 'Meus dados',
                                        dados: ['Nome', 'Endereço'])));
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 0),
                              width: double.infinity,
                              height: 30,
                              child: const Text('Dados cadastrais')),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 0),
                              width: double.infinity,
                              height: 30,
                              child: const Text('Termos de uso e privacidade')),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 0),
                              width: double.infinity,
                              height: 30,
                              child: const Text('Configurações')),
                        ),
                      ],
                    ))),
            body: PageView(
              children: const [
                ExamplePageOne(),
                ExamplePageTwo(),
                ExamplePageThree()
              ],
            ),
            bottomNavigationBar:
                BottomNavigationBar(currentIndex: 0, items: const [
              BottomNavigationBarItem(label: 'Pág. 1', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Pág. 2', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Pág. 2', icon: Icon(Icons.home))
            ])));
  }
}
