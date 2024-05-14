import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cv_app_binome/component/section.dart';
import 'map_sample.dart';  // Assurez-vous que cette ligne est ajoutée en haut du fichier

class CvMohamedGhannouchi extends StatefulWidget {
  @override
  _CvMohamedGhannouchiState createState() => _CvMohamedGhannouchiState();
}

class _CvMohamedGhannouchiState extends State<CvMohamedGhannouchi> {
  int _selectedIndex = 0;

  final List<Widget> cvSections = <Widget>[
    // Informations Personnelles
    Section(
      title: 'Informations Personnelles',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profilegh.JPG'),  // Assurez-vous d'ajouter l'image à votre dossier assets
          ),
          SizedBox(height: 10),
          Text('Mohamed Ghannouchi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('Développeur Logiciel', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.email, color: Colors.blue),
              SizedBox(width: 5),
              Text('mohamed@example.com', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.blue),
              SizedBox(width: 5),
              Text('+123 456 7890', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.blue),
              SizedBox(width: 5),
              Text('123 Rue Exemple, Ville, Pays', style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    ),
    // Études
    Section(
      title: 'Études',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Baccalauréat en Informatique - Université de X', style: TextStyle(fontSize: 16)),
          Text('Master en Développement Logiciel - Université de Y', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    // Expérience Professionnelle
    Section(
      title: 'Expérience Professionnelle',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Développeur Backend - Crafty Soft', style: TextStyle(fontSize: 16)),
          Text('Janvier 2023 - Présent', style: TextStyle(fontSize: 16)),
          Text('Responsabilités: Développement et maintenance de systèmes backend.', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    // Compétences
    Section(
      title: 'Compétences',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Flutter & Dart', style: TextStyle(fontSize: 16)),
          Text('.NET & C#', style: TextStyle(fontSize: 16)),
          Text('Gestion de bases de données SQL', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    // Portfolio
    Section(
      title: 'Portfolio',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Détails des projets et réalisations.', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    Container(
      height: 300, // Hauteur fixe pour la carte
      child: MapSample(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV de Mohamed Ghannouchi',
          style: TextStyle(
              fontFamily: 'Lato',  // Assurez-vous que la police est correctement ajoutée dans pubspec.yaml
              fontSize: 20.0,      // Taille de la police
              fontWeight: FontWeight.bold,  // Gras
              color: Colors.white  // Couleur du texte
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: cvSections.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Personnel',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.white),
            label: 'Études',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Colors.white),
            label: 'Expériences',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer, color: Colors.white),
            label: 'Compétences',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: Colors.white),
            label: 'Portfolio',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.white),
            label: 'Carte',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
