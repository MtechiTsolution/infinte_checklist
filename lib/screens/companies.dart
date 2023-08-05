import 'package:flutter/material.dart';

import '../utils/customcolors.dart';

class CompaniesPage extends StatelessWidget {
  final List<String> airlineCompanies = [
    "ATR",
    "Aero Vodochody",
    "Aeroprakt",
    "Airbus",
    "Aviat",
    "BAe",
    "Beechcraft",
    "Boeing",
    "Bombardier",
    "Cessna",
    "Cirrus",
    "Diamond",
    "Embraer",
    "Mooney",
    "Pilatus",
    "Vans",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('INFINITE CHECKLIST'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: airlineCompanies.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(airlineCompanies[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the company details screen when a company is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompanyDetailScreen(companyName: airlineCompanies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CompanyDetailScreen extends StatelessWidget {
  final String companyName;

  CompanyDetailScreen({required this.companyName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text(companyName),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              // 'assets/${companyName.toLowerCase()}_image.jpg',
              'assets/flight.png',
              height: 130,
               width: 330,
              color: Colors.white,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('ATR 42-500(Demo)'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // Navigate to the detail page for ATR 42-500(Demo)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(companyName: companyName, modelName: 'ATR 42-500(Demo)'),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('ART 72'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // Navigate to the detail page for ART 72
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(companyName: companyName, modelName: 'ART 72'),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('ATR 72-500'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // Navigate to the detail page for ATR 72-500
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(companyName: companyName, modelName: 'ATR 72-500'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String companyName;
  final String modelName;

  DetailPage({required this.companyName, required this.modelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('$companyName - $modelName'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Details for $companyName - $modelName'),
      ),
    );
  }
}
