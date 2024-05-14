import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatelessWidget {
  final LatLng _center = const LatLng(34.728511, 10.737981); // Coordonnées de IIT Mharza
  GoogleMapController? mapController; // Déclaration du contrôleur de la carte

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller; // Initialisation du contrôleur de la carte
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adresse Professionnelle'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - kToolbarHeight - kBottomNavigationBarHeight, // Ajustez la hauteur selon vos besoins
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          onMapCreated: _onMapCreated, // Appel de la fonction lors de la création de la carte
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
