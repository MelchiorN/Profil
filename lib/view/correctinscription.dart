import 'package:flutter/material.dart';
// import 'package:newprofil/view/correctconnexion.dart';

class Inscriptionns extends StatelessWidget {
  const Inscriptionns({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('INSCRIPTION'), centerTitle: true),
        body: Center(
          child: Image(image: AssetImage('assets/images/image1.jpg')),
          // child: IconButton(
          //   icon: const Icon(Icons.arrow_forward),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Connexions()),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
