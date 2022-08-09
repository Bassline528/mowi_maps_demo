part of 'location_bloc.dart';

class LocationState extends Equatable {

  final bool followingUser;
  final LatLng? lastKnownLocation;

  
  
  const LocationState({
    this.followingUser = false,
    this.lastKnownLocation,
  });


  LocationState copyWith({
    bool? followingUser,
    LatLng? lastKnownLocation,
  }) => LocationState(
    followingUser    : followingUser ?? this.followingUser,
    lastKnownLocation: lastKnownLocation ?? this.lastKnownLocation,
  );

  
  @override
  List<Object?> get props => [ followingUser, lastKnownLocation,  ];
}
