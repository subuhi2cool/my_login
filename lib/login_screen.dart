import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
          child: Column(
            children: [
              Image.asset(
              "assets/images/image1.png",
              fit: BoxFit.cover,
              ),
              const SizedBox(height: 10.0,),
              const Text("Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
               const SizedBox(height: 20.0),
              Padding(
               // padding: const EdgeInsets.all(32.0),
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter username',
                          labelText: 'Username',
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 10.0),

                ElevatedButton(onPressed: (){
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style:  TextButton.styleFrom(),
                  child: const Text("Login"),
                ),
            ],
          ),
              ),
  ],),
      );

  }
}
