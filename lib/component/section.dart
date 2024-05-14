import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget content;

  Section({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),  // Augmenter le padding pour un meilleur espace
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),  // Arrondir les coins
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),  // Augmenter l'opacité pour un effet d'ombre plus marqué
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        border: Border.all(color: Colors.blueAccent, width: 2),  // Ajouter une bordure bleue
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,  // Augmenter la taille de la police
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,  // Changer la couleur pour bleu accentué
            ),
          ),
          Divider(color: Colors.blue),  // Ajouter un séparateur
          SizedBox(height: 10),
          content,
        ],
      ),
    );
  }
}
