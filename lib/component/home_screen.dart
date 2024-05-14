import 'package:flutter/material.dart';
import 'cv_mohamed_belhaj.dart';  // Assurez-vous d'importer les pages de CV
import 'cv_mohamed_ghannouchi.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page d'Accueil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("CV de Mohamed Belhaj Hmida"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CvMohamedBelhaj()),
                );
              },
            ),
            SizedBox(height: 20),  // Pour un espace entre les deux boutons
            ElevatedButton(
              child: Text("CV de Mohamed Ghannouchi"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CvMohamedGhannouchi()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
