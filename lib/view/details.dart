import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 89, 215),
        body: Column(
          children: [
            // Top section with back button and profile image
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                        ),
                        const SizedBox(width: 50),
                        const Text(
                          "Contact Profil",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(""),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom section with contact information
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    // Contact action buttons
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 30,
                            child: const Icon(Icons.call, color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 30,
                            child: const Icon(Icons.sms, color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 30,
                            child: const Icon(Icons.mail, color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 0),
                    const Divider(color: Colors.black),

                    // Contact information section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Contact informations",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 7),
                          const SizedBox(height: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildRow("Behance", "melk@gmail.com"),
                              buildRow("Email", "ysyl@gmail.com"),
                              buildRow("Mobile", "+229 98764563"),
                              buildRow("Linkedin", "@Cpro"),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String titre, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              titre,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            detail,
            style: const TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
