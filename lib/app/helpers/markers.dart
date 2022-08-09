import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';



const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

//Me genera un random string para asignarle al markerId del marker
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

Set<Marker> getmarkers() { //markers to place on map
   final Set<Marker> markers = new Set();
   
      markers.add(Marker( //add first marker
        markerId: MarkerId(getRandomString(10)),
        position: LatLng(-25.342138,-57.629493 ), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(getRandomString(10)),
        position: LatLng(-25.340286, -57.624075), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Second ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(getRandomString(10)),
        position: LatLng(-25.343655, -57.628002), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

       //add more markers here 


    return markers;
  }