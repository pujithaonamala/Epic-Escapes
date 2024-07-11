import 'package:flutter/material.dart';
import 'package:myapp/screens/support.dart';
import 'package:myapp/screens/trips.dart';
import 'package:myapp/screens/wallet.dart';


import 'package:myapp/widgets/profileDashBoard.dart';
import 'package:myapp/widgets/appBar.dart';
import 'package:myapp/widgets/BottomTab.dart';
import 'package:myapp/widgets/BottomNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set to false to remove debug banner
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static List<Widget> _widgetOptions = <Widget>[
    Support(),
    MyTrips(),
    wallet(),
    
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LoginBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyappBar(
          title: 'Epic Escapes',
          scaffoldKey: _scaffoldKey,
          onNotificationTap: () {},
          onLoginTap: () => _showLoginBottomSheet(context),
        ),
      ),
      drawer: SideBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
  
}
