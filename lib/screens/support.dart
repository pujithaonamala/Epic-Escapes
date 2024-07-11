import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
      ),
      body: Center(
        child: _buildSupportItem(
          imageUrl:
              'https://lp-cms-production.imgix.net/image_browser/european-city-break-by-bus.jpg?auto=format&fit=crop&q=40&sharp=10&vib=20&ixlib=react-8.6.4', // Bus image URL
          buttonText: 'Book',
          onButtonPressed: () {
            // Navigate to location tab when button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LocationTab(
                  locations: ['Kakinada', 'Rajahmundry', 'Warangal', 'Vizag'],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSupportItem({
    required String imageUrl,
    required String buttonText,
    required VoidCallback onButtonPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: onButtonPressed,
          child: Text(buttonText),
        ),
      ],
    );
  }
}

class LocationTab extends StatelessWidget {
  final List<String> locations;

  const LocationTab({Key? key, required this.locations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(locations[index]),
            onTap: () {
              // Navigate to location details page with availability
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationDetails(
                    location: locations[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class LocationDetails extends StatelessWidget {
  final String location;

  const LocationDetails({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulated availability data (replace with actual logic)
    List<BusAvailability> busAvailability = [
      BusAvailability(busNumber: 1, seatsAvailable: 10, sleeper: true),
      BusAvailability(busNumber: 2, seatsAvailable: 5, sleeper: false),
      BusAvailability(busNumber: 3, seatsAvailable: 15, sleeper: true),
      BusAvailability(busNumber: 4, seatsAvailable: 0, sleeper: false),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(location),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.5, // Aspect ratio for each grid item (width / height)
        ),
        itemCount: busAvailability.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bus ${busAvailability[index].busNumber}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Seats Available: ${busAvailability[index].seatsAvailable}',
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Class: ${busAvailability[index].sleeper ? 'Sleeper' : 'Non-Sleeper'}',
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Availability: ${busAvailability[index].seatsAvailable > 0 ? 'Available' : 'Not Available'}',
                    style: TextStyle(
                      color: busAvailability[index].seatsAvailable > 0 ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BusAvailability {
  final int busNumber;
  final int seatsAvailable;
  final bool sleeper;

  BusAvailability({
    required this.busNumber,
    required this.seatsAvailable,
    required this.sleeper,
  });
}

void main() {
  runApp(MaterialApp(
    home: Support(),
  ));
}
