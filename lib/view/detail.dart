import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste de données dynamiques
    final List<Map<String, String>> contactInfo = [
      {'label': 'Email', 'value': 'example@email.com'},
      {'label': 'Behance', 'value': '@artpro_ya'},
      {'label': 'Mobile', 'value': '+88017125581668'},
      {'label': 'Linkedin', 'value': '@prodes'},
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            // Partie supérieure avec l'avatar et le titre
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white, size: 26),
                          SizedBox(width: 40),
                          Text(
                            'Contact Profil',
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          ),
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Partie inférieure avec les icônes et la liste dynamique
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      // Icônes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.call),
                            backgroundColor: const Color.fromARGB(
                              153,
                              85,
                              20,
                              20,
                            ),
                          ),
                          CircleAvatar(
                            child: Icon(Icons.message),
                            backgroundColor: const Color.fromARGB(
                              153,
                              85,
                              20,
                              20,
                            ),
                          ),
                          CircleAvatar(
                            child: Icon(Icons.email),
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Contact Information',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      // Liste dynamique
                      Expanded(
                        child: ListView.builder(
                          itemCount: contactInfo.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Row(
                                children: [
                                  // Label (avec un espace fixe grâce à Expanded)
                                  Expanded(
                                    flex:
                                        2, // Ajustez le flex pour contrôler l'espace occupé
                                    child: Text(
                                      contactInfo[index]['label']!,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Valeur (alignée après le label)
                                  Expanded(
                                    flex:
                                        3, // Ajustez le flex pour contrôler l'espace occupé
                                    child: Text(
                                      contactInfo[index]['value']!,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[700],
                                      ),
                                      textAlign:
                                          TextAlign.left, // Alignement à gauche
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
