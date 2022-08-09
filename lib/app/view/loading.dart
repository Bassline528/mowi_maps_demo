import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmaps/app/view/gps_access_screen.dart';
import 'package:testmaps/app/view/maps.dart';

import '../blocs/blocs.dart';



class LoadingScreen extends StatelessWidget {
   
   const LoadingScreen({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
   return Scaffold(
      body: BlocBuilder<GpsBloc, GpsState>(
        builder: (context, state) {
          return state.isAllGranted
            ?  MapScreen()
            :  const GpsAccessScreen();
        },
      )
   );
   }
}