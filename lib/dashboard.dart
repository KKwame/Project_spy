import 'package:flutter/material.dart';
import 'package:project_spy/detailedsymptomchoice.dart';
import 'diagnosis_pane.dart';
import 'location.dart';
import 'variouscure.dart';
import 'viewstatspane.dart';
import 'dummy1.dart';
import 'dummy2.dart';
import 'dummy3.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
            title: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            pinned: false,
            expandedHeight: 210.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "PharmIt",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 65.0),
              ),
              centerTitle: true,
            ),
          ),
          //Padding: EdgeInsets.all(30)
          SliverGrid.count(
            crossAxisCount: 2,
            children: <Widget>[
              MyMenu(
                title: 'Make Diagnosis',
                icon: Icons.account_balance,
                warna: Colors.blue,
                name: DiagnosisPane(),
              ),
              MyMenu(
                title: 'View Statistics',
                icon: Icons.assessment,
                warna: Colors.brown,
                name : ViewStatsPane(),
              ),
              MyMenu(
                title: 'Various Cure',
                icon: Icons.do_not_disturb_on,
                warna: Colors.grey,
                name: VariousCurePane(),
              ),
              MyMenu(
                title: 'Nearest Pharmacies',
                icon: Icons.add_location,
                warna: Colors.blue,
                name: LocationPane(),
              ),
              MyMenu(
                title: 'Make Diagnos',
                icon: Icons.account_box,
                warna: Colors.blue,
                name: Dummy1Pane(),
              ),
              MyMenu(
                title: 'Make Diagnis',
                icon: Icons.ac_unit,
                warna: Colors.blue,
                name: Dummy2Pane(),
              ),
              MyMenu(
                title: 'Make Diaosis',
                icon: Icons.access_alarm,
                warna: Colors.blue,
                name: Dummy3Pane(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna, this.name});

  final String title;
  final IconData icon;
  final MaterialColor warna;
  final Widget name;
  //final Navigator onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>name),);
        },
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 70.0,
              color: warna,
            ),
            Text(title, style: new TextStyle(fontSize: 17.0))
          ],
        )),
      ),
    );
  }
}