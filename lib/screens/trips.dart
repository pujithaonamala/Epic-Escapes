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
          imageUrl: 'data:image/jpeg;base64,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',
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
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYQZnObu0zV9nKKSNUylFVk_mzASAC_yNloA&s',
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
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/1e/A_display_of_Hindu_and_Jain_temple_ruins%2C_Warangal_Fort_Park_and_Museum%2C_Telangana%2C_India_-_56.jpg',
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
          imageUrl: 'https://th.bing.com/th/id/OIP.ExzPS5On7a8CWhCCVeTwwgHaHa?rs=1&pid=ImgDetMain',
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
        title: Text('Location Details', style: TextStyle(fontSize: 20.0)), // Adjusted font size here
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bus Availability for $tripName',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // Adjusted font size here
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentPage(
                              busNumber: 'Bus 1',
                              timings: '9:00 AM - 11:00 AM',
                              price: 'Rs. 500',
                              seatNumber: '1A', // Placeholder for seat selection
                              onPaymentComplete: () {
                                // Handle payment completion logic here
                                print('Payment completed successfully');
                              },
                            )),
                          );
                        },
                        child: Text('Select Seat'),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentPage(
                              busNumber: 'Bus 2',
                              timings: '11:30 AM - 1:30 PM',
                              price: 'Rs. 600',
                              seatNumber: '2B', // Placeholder for seat selection
                              onPaymentComplete: () {
                                // Handle payment completion logic here
                                print('Payment completed successfully');
                              },
                            )),
                          );
                        },
                        child: Text('Select Seat'),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentPage(
                              busNumber: 'Bus 3',
                              timings: '2:00 PM - 4:00 PM',
                              price: 'Rs. 550',
                              seatNumber: '3C', // Placeholder for seat selection
                              onPaymentComplete: () {
                                // Handle payment completion logic here
                                print('Payment completed successfully');
                              },
                            )),
                          );
                        },
                        child: Text('Select Seat'),
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

class PaymentPage extends StatelessWidget {
  final String busNumber;
  final String timings;
  final String price;
  final String seatNumber;
  final VoidCallback onPaymentComplete;

  PaymentPage({
    required this.busNumber,
    required this.timings,
    required this.price,
    required this.seatNumber,
    required this.onPaymentComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bus: $busNumber'),
            Text('Timings: $timings'),
            Text('Price: $price'),
            Text('Selected Seat: $seatNumber'),
            ElevatedButton(
              onPressed: () {
                // Placeholder for payment completion
                // Assuming payment completes successfully
                onPaymentComplete();
                // Show confirmation dialog or navigate to success page
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Payment Successful'),
                    content: Text('Thank you for your payment!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop(); // Pop twice to go back to trips page
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
