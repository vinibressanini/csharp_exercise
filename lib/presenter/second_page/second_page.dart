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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
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
