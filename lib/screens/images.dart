import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Trips Page'),
      ),
      body: Center(
        child: MyTrips(),
      ),
    ),
  ));
}

class MyTrips extends StatelessWidget {
  const MyTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TripItem(
          imageUrl: 'https://via.placeholder.com/150',
          tripName: 'kakinada',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('kakinada')),
            );
          },
          onButtonTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('kakinada')),
            );
          },
        ),
        TripItem(
          imageUrl: 'https://via.placeholder.com/150',
          tripName: 'vizag',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('vizag')),
            );
          },
          onButtonTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('vizag')),
            );
          },
        ),
        TripItem(
          imageUrl: 'https://via.placeholder.com/150',
          tripName: 'warangal',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('warangal')),
            );
          },
          onButtonTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('warangal')),
            );
          },
        ),
        TripItem(
          imageUrl: 'https://via.placeholder.com/150',
          tripName: 'rajahmundry',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('rajahmundry')),
            );
          },
          onButtonTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripsDetailPage('rajahmundry')),
            );
          },
        ),
      ],
    );
  }
}

class TripItem extends StatelessWidget {
  final String imageUrl;
  final String tripName;
  final VoidCallback onTap;
  final VoidCallback onButtonTap;

  const TripItem({
    required this.imageUrl,
    required this.tripName,
    required this.onTap,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tripName,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: onButtonTap,
                    child: Text('Button'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripsDetailPage extends StatelessWidget {
  final String tripName;

  TripsDetailPage(this.tripName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Trip Detail Page for $tripName'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationTab(tripName)),
                );
              },
              child: Text('Go to Location'),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationTab extends StatelessWidget {
  final String tripName;

  LocationTab(this.tripName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bus Availability for $tripName',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            BusInfoCard(
              busNumber: 'Bus 1',
              timings: '9:00 AM - 11:00 AM',
              price: 'Rs. 500',
              counter: 'Counter A',
              onTap: () {
                // Placeholder for booking functionality
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Book Bus 1'),
                    content: Text('Seats availability: 20'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            ),
            BusInfoCard(
              busNumber: 'Bus 2',
              timings: '11:30 AM - 1:30 PM',
              price: 'Rs. 600',
              counter: 'Counter B',
              onTap: () {
                // Placeholder for booking functionality
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Book Bus 2'),
                    content: Text('Seats availability: 15'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            ),
            BusInfoCard(
              busNumber: 'Bus 3',
              timings: '2:00 PM - 4:00 PM',
              price: 'Rs. 550',
              counter: 'Counter C',
              onTap: () {
                // Placeholder for booking functionality
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Book Bus 3'),
                    content: Text('Seats availability: 18'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BusInfoCard extends StatelessWidget {
  final String busNumber;
  final String timings;
  final String price;
  final String counter;
  final VoidCallback onTap;

  const BusInfoCard({
    required this.busNumber,
    required this.timings,
    required this.price,
    required this.counter,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bus: $busNumber',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Timings: $timings'),
            SizedBox(height: 4.0),
            Text('Price: $price'),
            SizedBox(height: 4.0),
            Text('Counter: $counter'),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: onTap,
              child: Text('Book'),
            ),
          ],
        ),
      ),
    );
  }
}

