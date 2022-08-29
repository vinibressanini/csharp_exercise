import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.facebook,
                size: 55,
              ),
              Icon(
                Icons.facebook,
                size: 55,
              ),
              Icon(
                Icons.facebook,
                size: 55,
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            "or use your email account",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                  filled: true,
                  icon: Icon(Icons.email),
                  hintText: "Email",
                  fillColor: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                  filled: true,
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                  fillColor: Colors.white),
            ),
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
          OutlinedButton(
            style: const ButtonStyle(
              minimumSize: MaterialStateProperty<double> ()
            ),
            onPressed: () {},
            child: const Text("SIGN IN",style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
