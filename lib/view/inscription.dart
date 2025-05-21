import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  const Inscription({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Inscription',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Text(
                'Bienvenue',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height:10),
              Form(
                key: _formKey,
                child:Column()
              )
              ,)

              const 
            ],
          ),
        ),
      ),
    );
  }
}
