import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: GetLocation(),
    );
  }
}

class GetLocation extends StatefulWidget {
  const GetLocation({Key? key}) : super(key: key);

  @override
  State<GetLocation> createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  //get latitude => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            print('object');
            n();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

  void n() async {
    Position? positions = await Geolocator.getLastKnownPosition(
        forceAndroidLocationManager: false);

    print(positions?.longitude);
  }
  // void determinePosition() {
  //   print('1');
  //   try {
  //     print('2');
  //     Position v = Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.lowest);
  //     print(v);
  //     print('3');
  //   } catch (e) {
  //     print('4');
  //     print(e);
  //   }
  //   // return await Geolocator.getCurrentPosition();
  // }
}
