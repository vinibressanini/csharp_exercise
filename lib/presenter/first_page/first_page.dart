import 'package:flutter/material.dart';
import 'package:front_end/core/top_icons_row.dart';
import 'package:front_end/presenter/second_page/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                "Sign In",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              const TopIconsRow(),
              const SizedBox(height: 50),
              Text(
                "or use your email account",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                ),
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
              const SizedBox(
                height: 15,
              ),
              Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 75),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minWidth: 350,
                height: 50,
                onPressed: () {},
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              const Text(
                '''Enter your personal details
  and start journey with us''',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                child: const Text(
                  "SING UP",
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
