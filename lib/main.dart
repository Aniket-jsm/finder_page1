import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Map<String, String> eventBackgroundImages = {
    'Coffee Date': 'asset/cofee.jpg',
    'Hitting Gym': 'asset/gym.png',
    'Movie Date': 'asset/movie.png',
    'Trip': 'asset/trip.png',
    'Hangout': 'asset/hangout.png',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Events List',
              // style: GoogleFonts.getFont('SK-Modernist',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('asset/back.jpg', width: 40, height: 40),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/setting.jpg', width: 40, height: 40),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // List of events

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: eventBackgroundImages.length,
                itemBuilder: (BuildContext context, int index) {
                  String eventName =
                      eventBackgroundImages.keys.elementAt(index);
                  String backgroundImagePath =
                      eventBackgroundImages.values.elementAt(index);

                  return Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(16.0),
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(backgroundImagePath),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        eventName,
                        // style: GoogleFonts.getFont('SK-Modernist',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ));
                },
              ),

              // Divider for the footer
              //  Spacer(),
              SizedBox(height: 70.0),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              // Logos at the footer
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('asset/foot1.png', width: 20, height: 20),
                    Image.asset('asset/foot2.png', width: 20, height: 20),
                    Image.asset('asset/foot3.png', width: 20, height: 20),
                    Image.asset('asset/foot4.png', width: 20, height: 20),
                    Image.asset('asset/foot5.png', width: 20, height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
