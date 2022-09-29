import 'package:flutter/material.dart';
import 'package:tela_login/login.dart';
import 'package:tela_login/text_input.dart';
import 'package:tela_login/top_banner.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _controladorNome = TextEditingController();
  final _controladorEmail = TextEditingController();
  final _controladorTelefone = TextEditingController();
  final _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBanner('Register'),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextInput(
                    controlador: _controladorNome,
                    labelButton: 'Fullname',
                    icon: Icons.person,
                  ),
                  TextInput(
                    controlador: _controladorEmail,
                    labelButton: 'Email',
                    icon: Icons.email,
                  ),
                  TextInput(
                    controlador: _controladorTelefone,
                    labelButton: 'Phone Number',
                    icon: Icons.phone,
                  ),
                  TextInput(
                    controlador: _controladorSenha,
                    labelButton: 'Password',
                    icon: Icons.key,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot password?'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        maximumSize:
                            Size(MediaQuery.of(context).size.width * 0.8, 20),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      child: const Text('REGISTER'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
