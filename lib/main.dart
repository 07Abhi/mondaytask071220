import 'medicalmodel.dart';
import 'package:flutter/material.dart';
import 'medication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.indigo,
      ),
      home: MedicationPage(),
    );
  }
}

class MedicationPage extends StatefulWidget {
  @override
  _MedicationPageState createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelColor: Colors.indigo,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            labelColor: Colors.indigo,
            labelStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "TODAY",
              ),
              Tab(
                text: "ACTIVE",
              ),
              Tab(
                text: "EXPIRED",
              ),
            ],
          ),
          title: Text(
            "Medication",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.indigo,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          shadowColor: Colors.white,
          leading: Icon(
            Icons.keyboard_backspace,
            size: 30.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: TabBarView(
          children: [
            ExpansionList(),
            Text("Bye world"),
            Text("Hello world!!"),
          ],
        ),
      ),
    );
  }
}

class ExpansionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: jsonData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ExpansionTileCustom(
              boldHead1: jsonData[index].medication,
              boldHead2: jsonData[index].time,
              appointment: jsonData[index].appointment,
              drname: jsonData[index].drname,
              documents: jsonData[index].documets,
              monthRem: jsonData[index].monthRem,
            ),
          );
        },
      ),
    );
  }
}
