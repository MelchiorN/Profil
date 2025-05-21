import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All contacts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.logout),
                ],
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      shape: WidgetStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Colors.transparent,
                      ),
                      elevation: WidgetStatePropertyAll(0),
                      leading: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.ac_unit),
                ],
              ),
              SizedBox(height: 05),
              Divider(color: Color.fromARGB(255, 9, 1, 1)),
              Expanded(
                child: ListView.separated(
                  itemBuilder:
                      (context, index) => ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.red),
                        title: Text('Ibrou'),
                        subtitle: Text("John Doe"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.call),
                            SizedBox(width: 30),
                            Icon(Icons.sms),
                          ],
                        ),
                      ),

                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
