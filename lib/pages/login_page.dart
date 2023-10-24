import 'package:flutter/material.dart';
import 'package:applogin/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// https://hermes.digitalinnovation.one/assets/diome/logo-minimized.png

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: 'email@email.com');
  var senhaController = TextEditingController(text: 'sua_senha');

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black12,
            body: SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height),
                    child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 70),
                            Row(children: [
                              Expanded(child: Container()),
                              Expanded(
                                  flex: 8,
                                  child: Image.network(
                                    "https://hermes.digitalinnovation.one/assets/diome/logo-minimized.png",
                                    height: 100,
                                  )),
                              Expanded(child: Container())
                            ]),
                            const SizedBox(height: 20),
                            const Text(
                              'Já tem cadastro?',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            const Text('Faça login e make the change._',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            const SizedBox(height: 40),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: TextField(
                                      controller: emailController,
                                      onChanged: (value) {
                                        debugPrint(value);
                                      },
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 0),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        hintText: 'E-mail',
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(Icons.mail_outline),
                                        prefixIconColor: Colors.purple,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: TextField(
                                      controller: senhaController,
                                      onChanged: (value) {
                                        debugPrint(value);
                                      },
                                      obscureText: isVisible,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.only(top: 0),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                        hintText: 'Senha',
                                        hintStyle: const TextStyle(
                                            color: Colors.white),
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        prefixIconColor: Colors.purple,
                                        suffixIconColor: Colors.purple,
                                        suffixIcon: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isVisible = !isVisible;
                                            });
                                          },
                                          child: Icon(isVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                            const SizedBox(height: 30),
                            Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                height: 30,
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (emailController.text ==
                                                'email@email.com' &&
                                            senhaController.text == '123') {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainPage()));
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      'Erro ao efetuar o login!!')));
                                        }
                                      },
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                                  Colors.purple)),
                                      child: const Text(
                                        'ENTRAR',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      )),
                                )),
                            Expanded(child: Container()),
                            Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              height: 30,
                              alignment: Alignment.center,
                              child: const Text('Equeci minha senha',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.w500)),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              height: 30,
                              alignment: Alignment.center,
                              child: const Text(
                                'Criar conta',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ))))));
  }
}
