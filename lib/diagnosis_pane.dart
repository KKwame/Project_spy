import 'package:flutter/material.dart';
import 'package:project_spy/Utilities/symptoms.dart';
import 'detailedsymptomchoice.dart';
//import 'Utilities/symptoms.dart';

class DiagnosisPane1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnosis Pane1'),
      ),
    );
  }
}

class DiagnosisPane extends StatefulWidget {
  @override
  _DiagnosisPaneState createState() => _DiagnosisPaneState();
}

class _DiagnosisPaneState extends State<DiagnosisPane> {
  List<Symptom> _symptoms;

  @override
  void initState() { 
    super.initState();
    _symptoms = Symptoms.initializeSymptoms().getSymptoms;
  }

  _handleDetailedSymptomChoiceData(int index) async {
    bool data = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailedSymptomChoice(_symptoms[index])));
    this.setState(() {
      _symptoms[index].setCheckState = data;
    });
  }

  _handleIconDisplay(int index) {
    bool readStatus = _symptoms[index].getSymptomCheck ?? false;
    return Icon(
      (readStatus ? Icons.check_circle : Icons.cancel),
      color: (readStatus) ? Colors.green : Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _symptoms.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.blueAccent, width: 1.0),
                    ),
                  ),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(_symptoms[index].getTitle),
                        _handleIconDisplay(index),
                      ],
                    ),
                    onTap: () {
                      _handleDetailedSymptomChoiceData(index);
                    },
                  ),
                );
              },
            ),
          ),
          FlatButton(
            onPressed: _onMakeDiagnosisPressed,
            color: Colors.blue,
            child: Text('Make Diagnosis'),
          ),
        ],
      ),
    );
  }

  void _onMakeDiagnosisPressed() async {
    final data = _symptoms.map((symptom) {
      return (symptom.getSymptomCheck ?? false) ? 1 : 0;
    }).toList();

    print('current data ${data}');
  }
}
