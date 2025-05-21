import 'package:flutter/material.dart';
import 'package:newprofil/view/inscriptions.dart';
import 'package:remixicon/remixicon.dart';

class Connexions extends StatelessWidget {
  const Connexions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Connexion',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Connecter vous pour ne rien rater',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.brown,
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(RemixIcons.at_line),
                  // suffixIcon: Icon(RemixIcons.eye_off_fill),
                  // prefixIcon: Icon(RemixIcons.shopping_bag_2_line),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.brown,
                  hintText: 'Mot de passe ',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(RemixIcons.lock_password_fill),
                  // suffixIcon: Icon(RemixIcons.eye_off_fill),
                  // prefixIcon: Icon(RemixIcons.shopping_bag_2_line),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomRight,
                // alignment: Alignment.centerRight,
                child: Text(
                  'Mot de passe oublié',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Connexion',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 5, color: Colors.red)),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('OU'),
                  ),
                  Expanded(child: Divider(thickness: 5, color: Colors.red)),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(RemixIcons.apple_fill, size: 50),
                    onPressed: () {},
                  ),
                  SizedBox(width: 70),
                  IconButton(
                    icon: Icon(RemixIcons.apple_fill, size: 50),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Vous n\'avez pas de compte?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Inscriptions()),
                      );
                    },
                    child: const Text(
                      'Inscrivez-vous!',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
