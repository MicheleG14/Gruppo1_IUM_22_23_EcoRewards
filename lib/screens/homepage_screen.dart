import 'package:ecorewards/widgets/qr_button.dart';
import 'package:flutter/material.dart';
import '../widgets/ecorewards_logo.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const EcoRewardsLogo(),
          const Text('Benvenuto',
              style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MadeTommy')),
          QRButton(),
          const Text('oppure',
              style: TextStyle(fontSize: 16, color: Colors.grey)),
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Icon(Icons.contactless_outlined, size: 70)),
          const Text(
            'Avvicina il dispositivo alla stazione di riciclo.',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
