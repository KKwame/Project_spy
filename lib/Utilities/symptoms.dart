//import 'package:flutter/material.dart';

class Symptoms{
  List<Symptom> _symptoms;

  Symptoms.initializeSymptoms (){
    _symptoms = List<Symptom>();
    _symptoms.add(Symptom('Headache','This is for showing Headache as a symptom',false));
    _symptoms.add(Symptom('Fever','This is for showing Fever as a symptom',false));
    _symptoms.add(Symptom('Chills','This is for showing Chills as a symptom',false));
    _symptoms.add(Symptom('Spasm','This is for showing Spasm as a symptom',false));
    _symptoms.add(Symptom('Arthralgia','This is for showing Arthralgia as a symptom',false));
    _symptoms.add(Symptom('Asthenia','This is for showing Asthenia as a symptom',false));
    _symptoms.add(Symptom('Sweating','This is for showing Sweating as a symptom',false));
    _symptoms.add(Symptom('Dizziness','This is for showing Dizziness as a symptom',false));
    _symptoms.add(Symptom('Nausea','This is for showing Nausea as a symptom',false));
    _symptoms.add(Symptom('Bitter_Mouth','This is for showing Bitter Mouth as a symptom',false));
    _symptoms.add(Symptom('Inaptence','This is for showing Inaptence as a symptom',false));
    _symptoms.add(Symptom('Abdominal_Pains','This is for showing Abdominal Pains as a symptom',false));
    _symptoms.add(Symptom('Cough','This is for showing Cough as a symptom',false));
    _symptoms.add(Symptom('Sore_Throat','This is for showing Soar Throat as a symptom',false));
    _symptoms.add(Symptom('Sneeze','This is for showing Sneeze as a symptom',false));
    _symptoms.add(Symptom('Diarrhea','This is for showing Diarrhea as a symptom',false));
    _symptoms.add(Symptom('Restlessness','This is for showing Restlessness as a symptom',false));
    _symptoms.add(Symptom('Thirst','This is for showing Thirst as a symptom',false));
  }
  List<Symptom> get getSymptoms => _symptoms;
}

class Symptom{
  String _title;
  String _symptomContent;
  bool _symptomCheck;

  Symptom(this._title, this._symptomContent, this._symptomCheck);

  String get getTitle => _title;
  String get getSymptomContent => _symptomContent;
  bool get getSymptomCheck => _symptomCheck;
  set setCheckState(bool checkState) => this._symptomCheck = checkState;

}