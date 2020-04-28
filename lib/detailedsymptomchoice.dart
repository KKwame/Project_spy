import 'package:flutter/material.dart';
import 'package:project_spy/Utilities/symptoms.dart';

class DetailedSymptomChoice extends StatefulWidget {
  Symptom selectedSymptom;
  DetailedSymptomChoice(this.selectedSymptom);
  @override
  _DetailedSymptomChoiceState createState() => _DetailedSymptomChoiceState(selectedSymptom);
}

class _DetailedSymptomChoiceState extends State<DetailedSymptomChoice> {
  Symptom selectedSymptom;
  _DetailedSymptomChoiceState(this.selectedSymptom);
  _handleReadCheckBox(bool checkStatus){
    this.setState((){
      selectedSymptom.setCheckState = checkStatus;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedSymptom.getTitle),
        leading: MaterialButton(onPressed: (){
          Navigator.pop(context, selectedSymptom.getSymptomCheck);
        },child: Icon(Icons.arrow_back, color:Colors.white,),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0),child:Text(selectedSymptom.getSymptomContent,style: TextStyle(fontSize: 20.0),),
            ),
            Row(mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text('Select=>',style:TextStyle(fontSize: 30.0),),
              Checkbox(value: selectedSymptom.getSymptomCheck, onChanged: _handleReadCheckBox)
            ])
          ],
        )
      ),
    );
  }
}