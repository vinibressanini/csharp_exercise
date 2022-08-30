import 'package:flutter/material.dart';
import 'package:front_end/presenter/first_page/first_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Your registration was successful!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
            Icon(
              Icons.attach_email_rounded,
              color: Colors.purple.shade400,
              size: 200,
            ),
            const Text(
              '''Your registration was successful
and we have sent you 
a confirmation receipt to your
email at: ''',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              "email@example.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade300),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minWidth: 350,
              height: 50,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
              child: const Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
