import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:front_end/presenter/third_page/third_page.dart';

import '../../core/top_icons_row.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordCheckController = TextEditingController();

    var url = "http://192.168.0.99/api/Usuario";

    Future<void> postLogin() async {
      Map<String, dynamic> headers = {
        "accept": 'Application/json',
      };

      Map<String, dynamic> body = {
        'nome': nameController.text,
        'email': emailController.text,
        'senha': passwordController.text
      };
      await Dio().post(
        url,
        data: body,
        options: Options(headers: headers),
      );
    }

    String? verifySignUp() {
      if (passwordController.text != passwordCheckController.text) {
        return "As senhas deve ser iguais";
      } else if (nameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          passwordCheckController.text.isEmpty) {
        return "Todos os campos devem ser preenchidos";
      } 
      return null;
    }

    Future<Widget?> createAccount() async {
      String? text = verifySignUp();
      if (text != null) {
        passwordCheckController.clear();
        passwordController.clear();
        return await showDialog(
          context: context,
          builder: (context) {
            return  AlertDialog(
              title: Text(text),
            );
          },
        );
      }
      postLogin();
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ThirdPage()),
      );
      return null;
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              const TopIconsRow(),
              const SizedBox(height: 50),
              Text(
                "or use your email for registration",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Name",
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                controller: passwordCheckController,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Confirm Password",
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 45),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minWidth: 350,
                height: 50,
                onPressed: () {
                  createAccount();
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                '''To keep connected with us please
    login with your personal info''',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "SING IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
