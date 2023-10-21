import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey[200],
            body: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 70),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blueAccent[200],
                      child: const Icon(Icons.person,
                          size: 150, color: Colors.black),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      alignment: Alignment.center,
                      child: const Row(children: [
                        Expanded(flex: 2, child: Text('Email: ')),
                        Expanded(flex: 3, child: Text('youraddress@yourorg')),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      alignment: Alignment.center,
                      child: const Row(children: [
                        Expanded(
                          flex: 2,
                          child: Text('Password: '),
                        ),
                        Expanded(flex: 3, child: Text('*********')),
                      ]),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.blue[600],
                      height: 30,
                      alignment: Alignment.center,
                      child: const Text('Click Me'),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      alignment: Alignment.center,
                      child: const Text('Register'),
                    ),
                    const SizedBox(height: 10),
                  ],
                ))));
  }
}
