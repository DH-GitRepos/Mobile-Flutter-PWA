import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:baristars_application/src/locations.dart' as locations;

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => const LocationPage(),
      );
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        padding: const EdgeInsets.all(10.0),
        color: Theme.of(context).colorScheme.onTertiary,

        child: Column(

            children: [

              Expanded(
                flex: 1,

                child: ListView(children: [
                  // BODY -> CONTAINER -> CHILDREN
                  Column(
                    children: [
                      // BODY -> CHILDREN

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Maps page',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Maps functionality unavailable',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Builder(
                        builder: (BuildContext context) {
                          return Divider(
                              color: Theme.of(context).colorScheme.tertiary,
                              thickness: 0.5);
                        }),


                      // EXAMPLE MAP INCLUSION

                      GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: const CameraPosition(
                          target: LatLng(0, 0),
                          zoom: 2,
                        ),
                        markers: _markers.values.toSet(),
                      ),

                      // CONTAINER HERE FOR GOOGLE MAPS
                      /*
                      GoogleMap(
                        initialCameraPosition: const CameraPosition(
                          target: LatLng(53.0103428998712, -2.181594686508177),
                          zoom: 15.0,
                        ),
                        compassEnabled: true,
                        mapToolbarEnabled: true,
                        cameraTargetBounds: CameraTargetBounds.unbounded,
                        mapType: MapType.normal,
                        minMaxZoomPreference: MinMaxZoomPreference.unbounded,
                        rotateGesturesEnabled: true,
                        scrollGesturesEnabled: true,
                        zoomControlsEnabled: true,
                        zoomGesturesEnabled: true,
                        liteModeEnabled: true,
                        tiltGesturesEnabled: false,
                        myLocationEnabled: false,
                        myLocationButtonEnabled: false,
                        padding: const EdgeInsets.all(0),
                        indoorViewEnabled: false,
                        trafficEnabled: false,
                        buildingsEnabled: true,
                        markers: {
                          const Marker(
                            markerId: MarkerId("baristar"),
                            position: LatLng(53.0103428998712, -2.181594686508177),
                            draggable: false,
                          ),
                        },

                      ),
                      */

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Location:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'College Road',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Stoke-on-Trent',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'ST4 2SA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),


                      Builder(
                          builder: (BuildContext context) {
                            return Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 0.5);
                          }),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: Container(
                          alignment: Alignment.center,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Opening times:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                        child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                                        child: Builder(
                                          builder: (BuildContext context) {
                                            return Text(
                                                'Mon - Fri',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Theme.of(context).colorScheme.tertiary,
                                                )
                                            );
                                          }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                              return Text(
                                                  '07:30 - 18:00',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                  )
                                              );
                                            }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ), // END COLUMN

                            ] // END children of CONTAINER > ROW),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                        child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                              return Text(
                                                  'Sat',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                  )
                                              );
                                            }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                              return Text(
                                                  '08:30 - 17:00',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                  )
                                              );
                                            }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ), // END COLUMN

                            ] // END children of CONTAINER > ROW),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                        child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                              return Text(
                                                  'Sun',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                  )
                                              );
                                            }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Column( // LEFT COLUMN - FOR TEXT
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                        child: Builder(
                                            builder: (BuildContext context) {
                                              return Text(
                                                  '10:00 - 16:00',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                  )
                                              );
                                            }),
                                      ),
                                    ] // END COLUMN CHILDREN
                                ),
                              ), // END COLUMN

                            ] // END children of CONTAINER > ROW),
                        ),
                      ),





                    ], // END MAIN LIST OF CHILDREN FOR COLUMN
                  ),
                ]
                ),

              )] // END OF BODY MAIN CHILDREN
        ),
      ),
    );

  }
}