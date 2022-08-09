import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testmaps/app/helpers/markers.dart';

import '../blocs/location/location_bloc.dart';


class MapScreen extends StatefulWidget {

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late LocationBloc locationBloc;

  @override
  void initState() {
    super.initState();

    locationBloc = BlocProvider.of<LocationBloc>(context);

    // Al ingresar a esta pagina solicito la ubicacion del usuario 
    locationBloc.getCurrentPosition(); 

  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if (locationState.lastKnownLocation == null) {
            return const Center(child: Text('Espere por favor...'));
          }
          return SizedBox(
            width: size.width,
            height: size.height,
              child: GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                markers: getmarkers(), // Aca se pone los marcadores
                initialCameraPosition: CameraPosition(
                  target: locationState.lastKnownLocation!, // Aca ingreso la localizacion obtenida al llamar la funcion getCurrentPosition();
                  zoom: 15
                ),
              ),
           );
        },
      ),
   );
  }
}